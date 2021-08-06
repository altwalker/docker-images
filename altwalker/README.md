# AltWalker Docker Images

Docker images for AltWalker.

## Supported tags and respective `Dockerfile` links

* [`0.3.1`, `latest` (altwalker/base/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/base/Dockerfile)
* [`0.3.1-dotnet-2.1`, `0.3.1-dotnet-3.1`, `latest-dotnet-2.1`, `latest-dotnet-3.1` (altwalker/dotnet/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/dotnet/Dockerfile)
* [`0.3.0` (altwalker/base/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/base/Dockerfile)
* [`0.3.0-dotnet-2.1`, `0.3.0-dotnet-3.1` (altwalker/dotnet/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/dotnet/Dockerfile)
* [`0.2.7` (altwalker/base/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/base/Dockerfile)
* [`0.2.7-dotnet-2.1`, `0.2.7-dotnet-3.1` (altwalker/dotnet/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/dotnet/Dockerfile)
* [`0.2.6` (altwalker/base/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/base/Dockerfile)
* [`0.2.5` (altwalker/base/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/base/Dockerfile)
* [`0.2.4` (altwalker/base/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/base/Dockerfile)
* [`0.2.3` (altwalker/base/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/base/Dockerfile)
* [`0.2.2` (altwalker/base/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/base/Dockerfile)
* [`0.2.1` (altwalker/base/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/base/Dockerfile)
* [`0.2.0` (altwalker/base/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/base/Dockerfile)
* [`0.1.1` (altwalker/base/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/base/Dockerfile)
* [`0.1.0` (altwalker/base/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/altwalker/base/Dockerfile)

## AltWalker

[AltWalker](https://altom.gitlab.io/altwalker/altwalker) is an open source, Model-based testing framework for automating your test execution. You design your tests as a directional graph and AltWalker executes them. It relies on [GraphWalker](http://graphwalker.github.io/) to generate paths through your tests graph.

## How to use this image

This image creates a script facilitating running AltWalker's command line on a docker container.

### Create a Dockerfile in your project

```dockerfile
FROM altwalker/altwalker:latest

COPY test-porject
WORKDIR test-project

RUN altwalker online tests -m models/default.json "random(vertex_coverage(100))"
```

Then, run the commands to build and run the Docker image:

```bash
$ docker build -t altwalker-image .
$ docker run --name altwalker-tests -p 8887:8887 altwalker-image
```

## Image Variants

The AltWalker images come in two flavors, each designed for a specific use case.

### `altwalker/altwalker:<version>`

This is the defacto image. If you are running python tests, you want to use
this one.

### `altwalker/altwalker:<version>-dotnet-<version>`

This images also contains `dotnet`. If you are running .Net/C# tests, you want to use
this one.