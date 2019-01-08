#!/bin/bash

# https://help.aliyun.com/document_detail/91333.html
# aliyun help eci CreateContainerGroup
# --EipInstanceId eip-xxx
# --Container.1.ImagePullPolicy IfNotPresent Always

aliyun eci CreateContainerGroup \
  --ContainerGroupName nginx \
  --RegionId cn-shanghai \
  --ZoneId cn-shanghai-a \
  --SecurityGroupId sg-uf69eozm2wgaltxtx44e \
  --VSwitchId vsw-uf69vfkf55j079f22k0zr \
  --RestartPolicy Always \
  --EipInstanceId eip-uf6cjehv5imosbwd5kkwq \
  --Container.1.Name nginx \
  --Container.1.Image registry-vpc.cn-shanghai.aliyuncs.com/hellodock/nginx:latest \
  --Container.1.ImagePullPolicy Always \
  --Container.1.Cpu 4 \
  --Container.1.Memory 16 \
  --Container.1.Port.1.Protocol TCP \
  --Container.1.Port.1.Port 80 \
  --Container.1.Port.2.Protocol TCP \
  --Container.1.Port.2.Port 443 \
