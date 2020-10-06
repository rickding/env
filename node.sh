#!/bin/bash

apt -y install npm

# node with cnpm: http://npm.taobao.org/
npm install -g cnpm --registry=https://registry.npm.taobao.org

# specify registry
npm add webpack@latest --registry=https://registry.npm.taobao.org

npm install  --registry=https://registry.npm.taobao.org

npm run build
