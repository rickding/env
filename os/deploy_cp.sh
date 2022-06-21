#!/bin/bash

# 传入参数，服务器地址，比如：172.22.11.201
echo "服务器: " $1

# 远程复制文件
for DIR in ./
do
    echo "copy file: " $DIR
	scp -P 10022 -r $DIR deploy@$1:/tmp/
done
