FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive

USER root
# for local build
#RUN sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.riken.jp/Linux/ubuntu/%g" /etc/apt/sources.list
RUN apt-get update -qy && apt-get install -y \
    git \
    make \
    curl \
    texlive \
    texlive-humanities \
    texlive-extra-utils \
    texlive-latex-recommended \
    texlive-lang-cjk \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-publishers \
    latexmk \
    latexdiff \
    pandoc \
    inkscape \
    && apt-get clean \
    && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

# Edit texmf.cnf
RUN echo "buf_size=10000000" > /etc/texmf/texmf.d/texmf.cnf
RUN update-texmf
ENTRYPOINT [ "make" ]
