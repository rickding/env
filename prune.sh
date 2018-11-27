#!/bin/bash

# docker
docker container prune
docker image prune
docker network prune

docker network ls
docker images
docker container ps
