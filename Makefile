# This file is deprecated!
# All the docker images should be compiled and pushed to DockerHub through GitHub Actions.
# Now *-jp images depends on kiyou/latex:*, thus local build is not recommended.
.PHONY: all latest jp vscode vscode-jp push_latest push_jp push_vscode push_vscode-jp

IMAGE_NAME = kiyou/latex

all: push_jp push_vscode-jp

latest: Dockerfile.base
	docker build -f $< -t $(IMAGE_NAME):$@ .

jp: Dockerfile.jp
	docker build -f $< -t $(IMAGE_NAME):$@ .

vscode: Dockerfile.vscode
	docker build -f $< -t $(IMAGE_NAME):$@ .

vscode-jp: Dockerfile.vscode-jp
	docker build -f $< -t $(IMAGE_NAME):$@ .

push_latest: latest
	docker push $(IMAGE_NAME):latest

push_jp: push_latest jp
	docker push $(IMAGE_NAME):jp

push_vscode: vscode
	docker push $(IMAGE_NAME):vscode

push_vscode-jp: push_vscode vscode-jp
	docker push $(IMAGE_NAME):vscode-jp
