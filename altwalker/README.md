# AltWalker Docker Images

Docker images for AltWalker.

## Supported tags and respective `Dockerfile` links

* [`0.1.0`, `latest` (0.1.0/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/Dockerfile)

## AltWalker

[AltWalker](https://altom.gitlab.io/altwalker/altwalker) is an open source, Model-based testing framework for automating your test execution. You design your tests as a directional graph and AltWalker executes them. It relies on [Graphwalker](http://graphwalker.github.io/) to generate paths through your tests graph.

## How to use this image

This image creates a script facilitating runnig AltWalker's command line on a docker container.

### Create a Dockerfile in your project

```
FROM altwalker\altwalker:latest

COPY test-porject
WORKDIR test-project

RUN altwalker online tests -m models/default.json
```

Then, run the commands to build and run the Docker image:

```
$ docker build -t altwalker-image .
$ docker run --name altwalker-tests -p 8887:8887 altwalker-image
```