### 服务器安装步骤

#### 一，跳板机上传文件

- 准备文件

- 执行命令 ./deploy_cp.sh 172.22.11.201

#### 二，服务器安装

- root权限，sudo su

- 安装docker和compose，./install_compose.sh

- 配置启动项，加载业务，./config_rc_local.sh

#### 三，验证

- docker和compose

docker -v
docker-compose -v

docker pull 10.10.27.102:5000/nginx
docker images
docker ps

- 服务自启动

重启服务器：reboot

再次登录，查看docker运行状态

#### 常见错误

1，运行xxx.sh脚本报错: /bin/bash^M: bad interpreter: No such file or directory

原因：文件是dos格式，换行符冲突

解决方法：强制转换文件格式为unix

- 进入编辑状态 vi xxx.sh
- 查看文件格式 :set ff
- 设置文件格式 :set ff=unix
- 保存修改退出 :wq
- 再次运行脚本 ./xxx.sh
