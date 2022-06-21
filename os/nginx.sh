#!/bin/bash

# 删除旧文件
rm -rf /usr/local/nginx/conf/cert
rm -rf /usr/local/nginx/conf/conf.d

# 复制证书
mkdir -p /usr/local/nginx/conf/cert/
mv -f ../nginx/ssl/* /usr/local/nginx/conf/cert/

# 复制配置
mkdir -p /usr/local/nginx/conf/conf.d/
mv -f ../nginx/conf.d/* /usr/local/nginx/conf/conf.d/

# 加载配置
mv -f ../nginx/nginx.conf /usr/local/nginx/conf/
/usr/local/nginx/sbin/nginx -s reload
