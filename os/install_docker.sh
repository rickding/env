#!/bin/bash

yum install docker docker-compose -y 

systemctl enable docker 

service docker start

docker login -u root -p p@ssW0rd registry.cn-shanghai.aliyuncs.com

# docker tag nginx:latest swr.cn-south-1.myhuaweicloud.com/byxx-rdc/nginx:latest
# docker push swr.cn-south-1.myhuaweicloud.com/byxx-rdc/nginx:latest
