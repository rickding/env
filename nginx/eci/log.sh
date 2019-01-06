#!/bin/bash

aliyun eci DescribeContainerLog \
  --RegionId cn-shanghai \
  --ContainerGroupId eci-uf68ar6cfj9py302vb9m \
  --ContainerName nginx \
  --Tail \
  | grep --color -i -e error -e warn -e version
