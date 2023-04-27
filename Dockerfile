ARG VARIANT="jammy"
FROM ubuntu:${VARIANT} as base
RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    git \
    make \
    curl \
    texlive \
    texlive-extra-utils \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-publishers \
    texlive-bibtex-extra \
    biber \
    latexmk \
    latexdiff \
    lmodern \
    locales \
    pandoc \
    inkscape \
    vim \
    ghostscript \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
RUN echo "buf_size=10000000" > /etc/texmf/texmf.d/texmf.cnf
RUN update-texmf
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
RUN git config --global --add safe.directory /workspace
WORKDIR /workspace

FROM base as jp
RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    texlive-lang-cjk \
    texlive-lang-japanese \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
RUN update-texmf
