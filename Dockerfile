ARG VARIANT="focal"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    git \
    make \
    curl \
    texlive \
    texlive-extra-utils \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-lang-cjk \
    texlive-lang-japanese \
    texlive-fonts-recommended \
    texlive-publishers \
    latexmk \
    latexdiff \
    pandoc \
    inkscape \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
RUN echo "buf_size=10000000" > /etc/texmf/texmf.d/texmf.cnf
RUN update-texmf
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENTRYPOINT [ "make" ]
