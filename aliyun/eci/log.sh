#!/bin/bash

aliyun eci DescribeContainerLog \
  --RegionId cn-shanghai \
  --ContainerGroupId eci-uf6ge5meicbpt51yhxxd \
  --ContainerName jira \
  --Tail
