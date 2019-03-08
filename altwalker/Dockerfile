FROM robert96/graphwalker-cli:latest
ARG ALTWALKER_VERSION='0.1.0'

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN python3 -m pip install idna==2.8
RUN python3 -m pip install altwalker==${ALTWALKER_VERSION}