FROM debian:buster

ARG GRAPHWALKER_VERSION="4.3.0"

RUN apt-get update && \
    apt-get install -y \
        wget \
        openjdk-11-jdk \
        python3 \
        python3-pip \
        python3-venv \
        git

RUN export LC_ALL=C.UTF-8
RUN export LANG=C.UTF-8

RUN python3 -m pip install --upgrade pip setuptools wheel

COPY install-graphwalker.sh .
RUN chmod +x install-graphwalker.sh

RUN ./install-graphwalker.sh ${GRAPHWALKER_VERSION}
