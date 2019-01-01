@echo off

aliyun eci DescribeContainerLog ^
  --RegionId cn-shanghai ^
  --ContainerGroupId eci-uf6ge5meicbphcuba561 ^
  --ContainerName jira ^
  --Tail
