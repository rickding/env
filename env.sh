#!/bin/bash

apt-get autoremove -y
apt-get update


# docker
apt-get -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  xenial  stable"
apt-get update
apt-get -y install docker-ce

# docker from snap
# snap install docker


# python3
apt-get -y install python3
update-alternatives --install /usr/bin/python python /usr/bin/python2 100
update-alternatives --install /usr/bin/python python /usr/bin/python3 150

# pip
apt-get -y install python3-pip
python -m pip install -i http://pypi.douban.com/simple --trusted-host pypi.douban.com --upgrade pip
pip -V


# docker-compose
pip install -i http://pypi.douban.com/simple --trusted-host pypi.douban.com docker-compose
alias dcmp=docker-compose


# tools
apt -y install net-tools


# java
apt install -y maven
apt install -y openjdk-8-jdk-headless


# node
apt -y install npm
npm install http-server -g
