#!/bin/bash

image_name="my-resume"

docker build -t $image_name .

# Build Russian resume
docker run --rm -v "$(pwd)":/resume $image_name pdflatex -output-directory=/resume/CV resume.tex
echo "Russian resume compiled to CV/resume.pdf"

# Build English resume
docker run --rm -v "$(pwd)":/resume $image_name pdflatex -output-directory=/resume/CV resume-en.tex
echo "English resume compiled to CV/resume-en.pdf"
