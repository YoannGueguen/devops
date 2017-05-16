#!/bin/bash

INSTANCE_RUNNING=`sudo docker ps --filter="ancestor=julespeyronnet/devopsbilly" | wc -l`

# Build docker image
docker build -t julespeyronnet/devopsbilly .

# Stop current instance if exists
if [ $INSTANCE_RUNNING -gt 1 ] ; then
    printf "Stopping julespeyronnet/devopsbilly"
    docker stop prod-devops
    docker rm prod-devops
fi

docker run --name prod-devops -d julespeyronnet/devopsbilly

return 0