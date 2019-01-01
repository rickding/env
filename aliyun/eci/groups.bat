@echo off

aliyun eci DescribeContainerGroups ^
  --RegionId cn-shanghai ^

rem  --output cols=RegionId,ZoneId,ContainerGroupName,Status,IntranetIp,InternetIp
