#!/usr/bin/env bash

# Runs bash inside a container

VOLUME=`pwd`:/var/code
DOCKER_IMAGE_TAG="http-api"
DOCKER_RUN_API_BASH="docker run --rm -p 3000:3000 -it --name http-api -v $VOLUME $DOCKER_IMAGE_TAG /bin/bash"

docker build -t $DOCKER_IMAGE_TAG .

$DOCKER_RUN_API_BASH
