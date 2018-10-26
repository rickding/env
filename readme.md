#!/bin/bash

chmod a+w -R ./
chmod +x *.sh

ps -ef

netstat -ntlp
ifconfig

cat /etc/hosts

# owner and user group
ls -al ./
cat /etc/group
chown -R 999 ./
