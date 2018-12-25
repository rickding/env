#!/bin/bash

./docker.sh

# python3
apt -y install python3
update-alternatives --install /usr/bin/python python /usr/bin/python2 100
update-alternatives --install /usr/bin/python python /usr/bin/python3 150

# pip: update pip source
apt -y install python3-pip
python -m pip install -i http://pypi.douban.com/simple --trusted-host pypi.douban.com --upgrade pip
pip -V


# tools
apt -y install net-tools
apt -y install python3-tk


# java: update maven server url in settings.xml
apt install -y maven
apt install -y openjdk-8-jdk-headless


# node: http://npm.taobao.org/
apt -y install npm
# npm install -g http-server

# node with cnpm: http://npm.taobao.org/
npm install -g cnpm --registry=https://registry.npm.taobao.org
cnpm install -g http-server
