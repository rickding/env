#!/bin/bash

apt -y install git

# add key
ls -al ~/.ssh

ssh-keygen -t rsa -b 4096 -C "dingxl18@qq.com"

eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa

cat ~/.ssh/id_rsa.pub
clip < ~/.ssh/id_rsa.pub

ssh -T git@gitee.com
ssh -T git@github.com

# config user
git config --global user.email "dingxl18@qq.com"
git config --global user.name "dingxl"
