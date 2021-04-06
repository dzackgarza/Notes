#!/bin/bash

asy *.asy
pdflatex -interaction nonstopmode -file-line-error ./poster.tex
rm *.{out,log,aux,pre,prc,pbsdat,fls}

