#!/bin/bash

filetex="$1.tex"
fileaux="$1.aux"

# create pdf
# docker run --rm -it -v $(pwd):/workdir texlive/texlive pdflatex $filetex
docker run --rm -it -v $(pwd):/workdir texlive/texlive bibtex $fileaux
docker run --rm -it -v $(pwd):/workdir texlive/texlive pdflatex $filetex

# remove useless files
# ls -p -d * | grep -v "/$" | grep -E "(log|out|toc|lof|lot)$" | xargs rm

# open pdf
# okular *.pdf
# brave $1.pdf
