@echo off

aliyun eci DescribeContainerLog ^
  --RegionId cn-shanghai ^
  --ContainerGroupId eci-uf6ddjhfcjtqukiqzk4g ^
  --ContainerName wls10jdk7 ^
  --Tail
