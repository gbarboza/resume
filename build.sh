#!/usr/bin/env sh
set -e

mkdir build && cp resume.tex build && cd build

wget http://mirrors.ctan.org/macros/latex/contrib/moderncv.zip
#wget http://mirror.unl.edu/ctan/macros/latex/contrib/moderncv/tweaklist.sty

7z x moderncv.zip
cp moderncv/moderncv.cls .
cp moderncv/*.sty .

pdflatex resume.tex

mv resume.pdf ../

cd ../
rm -rf build
