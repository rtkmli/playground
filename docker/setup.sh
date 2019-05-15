#!/usr/bin/env bash

# build artifacts
rm -rf artifact/
mkdir -p artifact

env GOOS=linux go build -o $GOPATH/src/github.com/playground/docker/artifact/playground $GOPATH/src/github.com/playground/

# builder docker
docker build -t myplayground .
docker run -p 8080:8080 -it myplayground bash