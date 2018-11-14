#!/bin/bash

apt autoremove -y
apt update
apt -y install software-properties-common

# specified repositories or gedit /etc/apt/sources.list
add-apt-repository "deb https://mirrors.ustc.edu.cn/ubuntu/ xenial main restricted universe multiverse"
add-apt-repository "deb http://mirrors.163.com/ubuntu/ precise main universe restricted multiverse"
apt update


# docker
apt -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  xenial  stable"
apt update
apt -y install docker-ce

# docker from snap
# snap install docker


# python3
apt -y install python3
update-alternatives --install /usr/bin/python python /usr/bin/python2 100
update-alternatives --install /usr/bin/python python /usr/bin/python3 150

# pip
apt -y install python3-pip
python -m pip install -i http://pypi.douban.com/simple --trusted-host pypi.douban.com --upgrade pip
pip -V


# docker-compose
pip install -i http://pypi.douban.com/simple --trusted-host pypi.douban.com docker-compose
alias dcmp=docker-compose


# tools
apt -y install net-tools
apt -y install python3-tk


# java
apt install -y maven
apt install -y openjdk-8-jdk-headless


# node: http://npm.taobao.org/
apt -y install npm
# npm install -g http-server

# node with cnpm: http://npm.taobao.org/
npm install -g cnpm --registry=https://registry.npm.taobao.org
cnpm install -g http-server
