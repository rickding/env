@echo off

aliyun vpc DescribeVSwitches ^
  --output cols=ZoneId,VSwitchId,VSwitchName,VpcId,ResourceGroupId,Description
