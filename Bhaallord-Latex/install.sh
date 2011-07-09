#!/bin/bash
pdflatex formel.tex -halt-on-error  
#pdflatex formel.tex
#pdflatex formel.tex
rm *.aux 
rm *.log
rm *.toc
rm *~