#!/bin/bash

# 离线下载安装docker
# wget https://download.docker.com/linux/static/stable/x86_64/docker-18.06.3-ce.tgz

# 远程复制文件
# scp -P 10022 docker-18.06.3-ce.tgz deploy@172.22.11.201:/tmp/

tar -zxvf docker-18.06.3-ce.tgz
cp docker/* /usr/bin/

# 设置服务
cp docker.service /etc/systemd/system/
chmod a+x /etc/systemd/system/docker.service
systemctl daemon-reload 

# 启动服务
systemctl start docker
systemctl enable docker.service
systemctl status docker

docker --version

# 离线下载安装docker-compose。如果yum install docker-compose -y 安装docker-compose失败，那就直接下载安装
# curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o ./docker-compose

# 远程复制文件
# scp -P 10022 docker-compose deploy@172.22.11.201:/tmp/

# 可执行权限
cp docker-compose /usr/local/bin/
chmod a+x /usr/local/bin/docker-compose
ln -sf /usr/local/bin/docker-compose /usr/bin/docker-compose

docker-compose --version
