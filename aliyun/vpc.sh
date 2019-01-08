#!/bin/bash

aliyun vpc DescribeVpcs \
  --output cols=RegionId,VpcId,VpcName,Status,VSwitchIds,VRouterId,Description

aliyun vpc DescribeVRouters \
  --output cols=RegionId,VRouterId,VRouterName,VpcId,RouteTableIds,Description

aliyun vpc DescribeVSwitches \
  --output cols=ZoneId,VSwitchId,VSwitchName,VpcId,ResourceGroupId,Description

aliyun vpc DescribeEipAddresses \
  --output cols=RegionId,Name,AllocationId,IpAddress,Status,Bandwidth,ExpiredTime

aliyun ecs DescribeSecurityGroups \
  --output cols=SecurityGroupId,SecurityGroupName,VpcId,ResourceGroupId,Description
