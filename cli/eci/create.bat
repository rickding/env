@echo off

aliyun eci CreateContainerGroup
  --ContainerGroupName hellodock
  --RegionId cn-shanghai
  --ZoneId cn-shanghai-a
  --SecurityGroupId sg-uf6f775x5cf6xgzl2zod
  --VSwitchId vsw-uf69vfkf55j079f22k0zr
  --RestartPolicy Always
  --EipInstanceId
  --Containers.1.Name wls10jdk7
  --Containers.1.Image registry-vpc.cn-shanghai.aliyuncs.com/hellodock/weblogic10_jdk7:latest
  --Containers.1.Cpu 1
  --Containers.1.Memory 2
  --Containers.1.WorkingDir /root/weblogic
  --Containers.1.ImagePullPolicy 
  --Containers.1.Commands.1 ./run.sh
  --Containers.1.Args.1 test
  --Containers.1.Ports.1.Protocol TCP
  --Containers.1.Ports.1.Port 7001
  --Containers.1.EnvironmentVars.1.Key src
  --Containers.1.EnvironmentVars.1.Value cli
