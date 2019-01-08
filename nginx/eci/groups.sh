#!/bin/bash

aliyun eci DescribeContainerGroups \
  --RegionId cn-shanghai \
  | grep --color -i -e TotalCount -e ContainerGroupId -e Name -e ip
