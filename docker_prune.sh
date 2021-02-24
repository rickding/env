#!/bin/bash

# docker
# docker container prune -f
# docker image prune -f
# docker network prune -f
# docker volume prune -f

# docker system prune -f
docker system prune -f --volumes

docker volume ls
docker network ls
docker images
docker ps
