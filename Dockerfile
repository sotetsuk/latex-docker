FROM ubuntu:xenial
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    curl jq \
    texlive-full \
    python-pygments gnuplot \
    make git \
    aspell aspell-en \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
