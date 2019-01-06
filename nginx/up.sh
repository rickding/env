#!/bin/bash

# ./build.sh
./down.sh

# compose
docker-compose up -d
docker-compose ps

# docker-compose logs -f
# docker exec -it nginx_nginx_1 bash
