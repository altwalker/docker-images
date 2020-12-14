FROM debian:buster

ARG GRAPHWALKER_VERSION="4.3.0"

RUN apt-get update && apt-get install -y \
    wget \
    openjdk-11-jdk \
    python3 \
    python3-pip \
    git

COPY install-graphwalker.sh .
RUN chmod +x install-graphwalker.sh

RUN ./install-graphwalker.sh ${GRAPHWALKER_VERSION}