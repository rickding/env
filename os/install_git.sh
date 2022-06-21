#!/bin/bash

yum install git -y

git --version

ssh-keygen -t rsa -b 2048 -C "deploy@cargo.com"

cat /root/.ssh/id_rsa.pub

# git clone ssh://git@10.10.220.154:30001/cargo/deploy.git
