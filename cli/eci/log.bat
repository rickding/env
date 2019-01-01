@echo off

aliyun eci DescribeContainerLog ^
  --RegionId cn-shanghai ^
  --ContainerGroupId eci-uf66j7erdpwqhlsibsdc ^
  --ContainerName wls10jdk7 ^
  --Tail
