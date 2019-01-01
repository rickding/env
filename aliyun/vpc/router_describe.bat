@echo off

aliyun vpc DescribeVRouters ^
  --output cols=RegionId,VRouterId,VRouterName,VpcId,RouteTableIds,Description
