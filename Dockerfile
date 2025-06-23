FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    texlive-latex-base \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-lang-cyrillic \
    lmodern \
    latexmk \
    tzdata \
    && apt-get clean
WORKDIR /resume
COPY . .
CMD ["latexmk", "-pdf", "-interaction=nonstopmode", "resume.tex"]
