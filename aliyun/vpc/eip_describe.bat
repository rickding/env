@echo off

aliyun vpc DescribeEipAddresses ^
  --RegionId cn-shanghai ^
  --output cols=RegionId,InstanceId,IpAddress,Status,Bandwidth,InternetChargeType
