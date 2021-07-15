# latex-docker:vscode-jp
Dockerfile for latex environment for writing academic papers in Japanese using Visual Studio Code

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
- texlive-plain-generic (ulem.sty)
- latexmk
- latexdiff
- inkscape
- patch
- pandoc
- pandoc-citeproc
- gs
- texlive-lang-cjk (for Japanese typeset)
- texlive-lang-japanese (for Japanese typeset)