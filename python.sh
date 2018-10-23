#!/bin/bash
apt-get update
apt-get upgrade

apt-get install python3

update-alternatives --install /usr/bin/python python /usr/bin/python2 100
update-alternatives --install /usr/bin/python python /usr/bin/python3 150

apt-get install python3-pip

