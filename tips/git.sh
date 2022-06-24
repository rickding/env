#!/bin/bash

cat ~/.ssh/id_rsa.pub

# add key
ssh-keygen -t rsa -C "dingxl@gdairport.com"

cat ~/.ssh/id_rsa.pub
clip < ~/.ssh/id_rsa.pub
pbcopy < ~/.ssh/id_rsa.pub

ssh -T git@gitee.com
ssh -T git@github.com
ssh -T git@code.aliyun.com
ssh -T git@codeup.aliyun.com

# config user
git config --global user.email "dingxl@gdairport.com"
git config --global user.name "dingxl"
