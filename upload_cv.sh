#!/bin/bash
# A script that pushes my cv and updates my files
CWD=$(pwd)

cd ~/Projects/curriculum_vitae

pdflatex Morris_CV.tex
pdflatex Morris_CV.tex

cp Morris_CV.pdf ~/Projects/website/static/uploads/Morris_CV.pdf

cd ~/Projects/website

git pull

git add .

git commit -m 'update CV '$(date +%d.%m.%y-%H:%M:%S)

git push

cd ~/Projects/curriculum_vitae

git pull

git add .

git commit -m 'update CV '$(date +%d.%m.%y-%H:%M:%S)

git push

cd $CWD
