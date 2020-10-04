#!/bin/bash

yum install docker docker-compose -y 

docker login --username=羚驾科技 registry.cn-shanghai.aliyuncs.com

systemctl enable docker 
