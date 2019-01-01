@echo off

aliyun vpc DescribeVpcs ^
  --output cols=RegionId,VpcId,VpcName,Status,VSwitchIds,VRouterId,Description
