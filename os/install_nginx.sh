#!/bin/bash

# 下载安装包
wget http://nginx.org/download/nginx-1.10.3.tar.gz

# 远程复制文件
# scp -P 10022 nginx-1.10.3.tar.gz deploy@172.22.11.201:/tmp/

tar -xvf nginx-1.10.3.tar.gz

cd nginx-1.10.3

./configure --prefix=/usr/local/nginx --with-http_ssl_module
make
make install

cd /usr/local/nginx/sbin/

./nginx -V
./nginx -t
./nginx

netstat -ntlp
