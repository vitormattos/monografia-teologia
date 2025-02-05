FROM alpine

RUN apk update && apk add --no-cache \
        build-base \
        pandoc \
        texlive-full \
        texmf-dist-latexextra \
        texmf-dist-bibtexextra \
        wget \
        unzip

WORKDIR /latex