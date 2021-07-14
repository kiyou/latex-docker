# latex-docker:vscode
Dockerfile for latex environment for writing academic papers using Visual Studio Code

## Base Docker Image
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
- latexmk
- latexdiff
- inkscape
- pandoc
- pandoc-citeproc
- gs