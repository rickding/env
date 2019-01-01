@echo off

aliyun eci DescribeContainerLog ^
  --RegionId cn-shanghai ^
  --ContainerGroupId eci-uf6ge5meicbpj018nsfo ^
  --ContainerName jira ^
  --Tail
