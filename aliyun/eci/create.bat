@echo off

rem https://help.aliyun.com/document_detail/91333.html
rem aliyun help eci CreateContainerGroup

rem {"ContainerGroupId":"eci-uf6ddjhfcjtqukiqzk4g","RequestId":"1498FC71-17FC-4052-925D-D2A61D3DC489"}
rem --EipInstanceId
rem --Container.1.WorkingDir
rem --Container.1.Commands.1
rem --Container.1.Args.1
rem --Container.1.EnvironmentVar.1.Key
rem --Container.1.EnvironmentVar.1.Value

aliyun eci CreateContainerGroup ^
  --ContainerGroupName jira ^
  --RegionId cn-shanghai ^
  --ZoneId cn-shanghai-a ^
  --SecurityGroupId sg-uf6f775x5cf6xgzl2zod ^
  --VSwitchId vsw-uf69vfkf55j079f22k0zr ^
  --RestartPolicy Always ^
  --Container.1.Name jira ^
  --Container.1.Image registry-vpc.cn-shanghai.aliyuncs.com/hellodock/jira:7.12.3 ^
  --Container.1.ImagePullPolicy IfNotPresent ^
  --Container.1.Cpu 1 ^
  --Container.1.Memory 2 ^
  --Container.1.Port.1.Protocol TCP ^
  --Container.1.Port.1.Port 20030 ^
