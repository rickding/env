#!/bin/bash

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
