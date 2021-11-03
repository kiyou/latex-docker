.PHONY: all latest jp vscode vscode-jp

IMAGE_NAME = kiyou/latex

all: latest jp vscode vscode-jp

latest: Dockerfile.base
	docker build -f $< -t $(IMAGE_NAME):$@ .

jp: Dockerfile.jp
	docker build -f $< -t $(IMAGE_NAME):$@ .

vscode: Dockerfile.vscode
	docker build -f $< -t $(IMAGE_NAME):$@ .

vscode-jp: Dockerfile.vscode-jp
	docker build -f $< -t $(IMAGE_NAME):$@ .

push:
	docker push $(IMAGE_NAME):latest
	docker push $(IMAGE_NAME):jp
	docker push $(IMAGE_NAME):vscode
	docker push $(IMAGE_NAME):vscode-jp
