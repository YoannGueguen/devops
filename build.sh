#!/bin/bash

INSTANCE_RUNNING=`docker ps --filter="ancestor=julespeyronnet/devopsbilly" | wc -l`

# Build docker image
docker build -t julespeyronnet/devopsbilly .

# Stop current instance if exists
if [ $INSTANCE_RUNNING -gt 1 ] ; then
    printf "Stopping julespeyronnet/devopsbilly"
    docker stop prod-devops
    docker rm prod-devops
fi

docker run --name prod-devops --restart=always -p 80:80 -d julespeyronnet/devopsbilly
