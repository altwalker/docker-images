# AltWalker Docker Images

Docker images for AltWalker.

## Supported tags and respective `Dockerfile` links

* [`0.2.3`, `latest` (altwalker/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/Dockerfile)
* [`0.2.2` (altwalker/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/Dockerfile)
* [`0.2.1` (altwalker/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/Dockerfile)
* [`0.2.0` (altwalker/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/Dockerfile)
* [`0.1.1` (altwalker/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/Dockerfile)
* [`0.1.0` (altwalker/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/Dockerfile)

## AltWalker

[AltWalker](https://altom.gitlab.io/altwalker/altwalker) is an open source, Model-based testing framework for automating your test execution. You design your tests as a directional graph and AltWalker executes them. It relies on [GraphWalker](http://graphwalker.github.io/) to generate paths through your tests graph.

## How to use this image

This image creates a script facilitating runnig AltWalker's command line on a docker container.

### Create a Dockerfile in your project

```
FROM altwalker\altwalker:latest

COPY test-porject
WORKDIR test-project

RUN altwalker online tests -m models/default.json "random(vertex_coverage(100))"
```

Then, run the commands to build and run the Docker image:

```
$ docker build -t altwalker-image .
$ docker run --name altwalker-tests -p 8887:8887 altwalker-image
```