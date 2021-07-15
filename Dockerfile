FROM kiyou/latex:vscode
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    texlive-lang-cjk \
    texlive-lang-japanese \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
RUN update-texmf
ENTRYPOINT [ "make" ]
