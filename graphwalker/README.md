# GraphWalker Docker Images

Docker images for GraphWalker CLI.

## Supported tags and respective `Dockerfile` links

* [`4.3.0`, `latest` (graphwalker/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/graphwalker/Dockerfile)
* [`4.2.0`, (graphwalker/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/graphwalker/Dockerfile)
* [`4.1.0` (graphwalker/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/graphwalker/Dockerfile)
* [`4.0.1` (graphwalker/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/graphwalker/Dockerfile)
* [`4.0.0` (graphwalker/Dockerfile)](https://gitlab.com/altom/altwalker/docker-images/blob/master/graphwalker/Dockerfile)

## GraphWalker CLI

[GraphWalker](http://graphwalker.github.io/) is an open source Model-Based testing tool for test automation. It's designed to make it easy to design your tests using graphs.

The GraphWalker command line interface is a tool for working with graphs.

## About this image

The `altwalker/graphwalker:latest` tag will always point the latest release (which is, at the time of this writing, `altwalker/graphwalker:4.3.0`).

Up to the `altwalker/graphwalker:4.2.0` tag all tags had installed OpenJDK 8 (because before version 4.3.0 the latest version of Java supported by GraphWalker was Java 8).

Begining with the `altwalker/graphwalker:4.3.0` tag all tags will have installed OpenJDK 11.

## How to use this image

This image creates a script facilitating runnig GraphWalker's command line on a linux machine.

### Create a `Dockerfile` in your project

```
FROM altwalker/graphwalker:latest
CMD gw online -s RESTFUL
```

Then, run the commands to build and run the Docker image:

```
$ docker build -t my-graphwalker .
$ docker run --name my-running-graphwalker -p 8887:8887 my-graphwalker
```

Visit http://localhost:8887/graphwalker/getStatistics and you will see It works!

### Without a Dockerfile

Start the GraphWalker REST service on a docker image:

```
$ docker run -it -p 8887:8887 altwalker/graphwalker:latest gw online -s RESTFUL
```

Visit http://localhost:8887/graphwalker/getStatistics and you will see It works!
