#!/bin/bash

image_name="my-resume"
docker build -t $image_name .
docker run --rm -v "$(pwd)":/resume $image_name
echo "Resume is compiled and saved to CV/resume.pdf"
