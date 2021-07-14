# latex-docker:jp
Dockerfile for latex environment for writing academic papers in Japanese

## Base Docker Image
- ubuntu:focal

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