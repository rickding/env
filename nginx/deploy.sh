#!/bin/bash

# ./build.sh
# ./push.sh

# ./pull.sh
# ./rm.sh

# docker swarm init
# docker swarm leave --force
# docker swarm join --token xxx

# node.labels.group==db
# docker node update --label-add group=db u2
# docker node inspect u2 --pretty

# deploy
docker stack deploy -c docker-compose.yml nginx

docker node ls
docker stack ls
docker service ls
docker ps

# docker logs nginx_nginx_1 -f
# docker exec -it nginx_nginx_1 bash
