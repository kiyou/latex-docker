# latex-docker
Dockerfiles for latex environment for writing academic papers

## Dockerfiles
- base: Ubuntu environment for papers in English
- jp: Ubuntu environment for papers in Japanese
- vscode: Visual Studio Code environment for papers in English
- vscode-jp: Visual Studio Code environment for papers in Japanese

## Docker Hub
[kiyou/latex](https://hub.docker.com/u/kiyou)

## Base Docker Image
- ubuntu:focal
- mcr.microsoft.com/vscode/devcontainers/base:0-focal

## Packages
- bash
- git
- make
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

