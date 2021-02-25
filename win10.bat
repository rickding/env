dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

wsl --set-default-version 2

## 增加开机启动
C:\Users\pc1\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
