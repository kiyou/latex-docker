# latex-docker
[![GitHub Container Registry](https://github.com/kiyou/latex-docker/actions/workflows/ghcr.yml/badge.svg)](https://github.com/kiyou/latex-docker/actions/workflows/ghcr.yml)
[![DockerHub](https://github.com/kiyou/latex-docker/actions/workflows/dockerhub.yml/badge.svg)](https://github.com/kiyou/latex-docker/actions/workflows/dockerhub.yml)

Dockerfiles of TexLive environment for writing academic papers and documents

## Dockerfiles
- base: Ubuntu-based TexLive environment for papers in English
- jp: Ubuntu-based TexLive environment for papers in Japanese

## Images
- GitHub Container Registory

    [ghcr.io/kiyou/latex](https://github.com/kiyou/latex-docker/pkgs/container/latex)

- Docker Hub

    [kiyou/latex](https://hub.docker.com/u/kiyou)

## Base Docker Image
- [ubuntu](https://hub.docker.com/_/ubuntu)

## Packages
- bash
- git
- make
- vim
- texlive (lualatex, bibtex)
- texlive-extra-utils (texcount)
- texlive-latex-extra
- texlive-latex-recommended (lineno.sty)
- texlive-fonts-recommended
- texlive-publishers
- texlive-plain-generic (ulem.sty)
- texlive-bibtex-extra
- biber
- latexmk
- latexdiff
- lmodern (for conversion from markdown to pdf by pandoc)
- inkscape
- patch
- pandoc
- pandoc-citeproc
- gs
- texlive-lang-cjk (for Japanese typeset)
- texlive-lang-japanese (for Japanese typeset)
