#!/bin/bash

chmod a+w -R ./
chmod +x *.sh

ps -ef

netstat -ntlp
ifconfig

cat /etc/hosts

ls -al ./
cat /etc/group
chown -R 999 ./
