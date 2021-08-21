#!/bin/bash

yum install docker docker-compose -y 

systemctl enable docker 

service docker start

docker login --username=root registry.cn-shanghai.aliyuncs.com --password p@ssW0rd
