@echo off

set PATH=%PATH%;%cd%\bin
rem PATH

rem aliyun help
aliyun auto-completion
aliyun configure list

rem aliyun configure
rem region id: cn-hangzhou, cn-shanghai
rem region id: cn-shanghai-a, cn-shanghai-f

aliyun ecs DescribeRegions --output cols=RegionId,LocalName
aliyun ecs DescribeZones --RegionId cn-shanghai --output cols=ZoneId,LocalName

aliyun ecs DescribeImages
aliyun ecs DescribeDisks
aliyun ecs DescribeInstances --output cols=InstanceId,Status

aliyun slb AddBackendServers --LoadBalancerId 1513-cn-shanghai-dg-a01 --BackendServers '[{"ServerId": "i-2343"}]'

aliyun cs GET /clusters
aliyun cs POST /clusters/<cluster_id>/attach --header "Content-Type=application/json" --body "$(cat cli.json)"
aliyun cs DELETE /clusters/<cluster_id>
