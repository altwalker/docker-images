# AltWalker Docker Images

Docker Images for AltWalker dotnet executor ci tests

## Supported tags and respective `Dockerfile` links

* [`2.2-gw4.0.0`, `latest` (altwalker/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/tests-dotnet/Dockerfile)
* [`2.1-gw4.0.0` (altwalker/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/tests-dotnet/Dockerfile)

## AltWalker

[AltWalker](https://altom.gitlab.io/altwalker/altwalker) is an open source, Model-based testing framework for automating your test execution. You design your tests as a directional graph and AltWalker executes them. It relies on [GraphWalker](http://graphwalker.github.io/) to generate paths through your tests graph.

## How to use this image

This image creates a script facilitating runnig AltWalker's dotnet tests in a docker container.

### Create a Dockerfile in your project

```
FROM altwalker\tests-dotnet:latest

COPY test-project
WORKDIR test-project

#TODO
```

Then, run the commands to build and run the Docker image:

```
$ docker build -t altwalker-dotnet-tests-image .
$ docker run --name altwalker-dotnet-tests -p 8887:8887 altwalker-dotnet-tests-image
```