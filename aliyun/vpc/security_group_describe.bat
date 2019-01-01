@echo off

rem --RegionId cn-shanghai ^
aliyun ecs DescribeSecurityGroups ^
  --output cols=SecurityGroupId,SecurityGroupName,VpcId,ResourceGroupId,Description
