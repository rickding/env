#!/bin/bash

# export PATH=$PATH:$PWD/lib
# echo $PATH

# vi /root/.bashrc
# export PATH="$PATH:/data/work/env/aliyun/lib"

# aliyun help
aliyun auto-completion
aliyun configure list

# aliyun configure
# region id: cn-hangzhou, cn-shanghai
# region id: cn-shanghai-a, cn-shanghai-f

aliyun ecs DescribeRegions --output cols=RegionId,LocalName
aliyun ecs DescribeZones --RegionId cn-shanghai --output cols=ZoneId,LocalName

aliyun ecs DescribeImages
aliyun ecs DescribeDisks
aliyun ecs DescribeInstances --output cols=InstanceId,Status

aliyun slb AddBackendServers --LoadBalancerId 1513-cn-shanghai-dg-a01 --BackendServers '[{"ServerId": "i-2343"}]'

aliyun cs GET /clusters
aliyun cs POST /clusters/<cluster_id>/attach --header "Content-Type=application/json" --body "$(cat cli.json)"
aliyun cs DELETE /clusters/<cluster_id>
