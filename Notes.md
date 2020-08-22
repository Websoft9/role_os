## 可视化

Linux 可视化可以从 Desktop 和 Web GUI 两个方案考量。不同的操作系统发行版加上可视化的翅膀后，可以形成20个镜像商品

### Desktop

* Desktop: KDE, GNOME, 深度等
* Server: VNCServer,XDRP Server（依赖VNCServer）
* 客户端：VNC和Windows远程桌面客户端

最好可以支持两种客户端

### Web-GUI

Cockpit 是红帽开发的网页版图像化服务管理工具，优点是无需中间层，且可以管理多种服务。


## 上传OS

目前有如下 Linux 发行版有分发的价值：

* Oracle Linux
* 深度

## 待研究

1. 安装tigerVNC 之后，默认生成了 vncserver@.server模板，本Ansible role 中的service模板是修改后的内容
2. 所有的启动设置之前，都可以加上一个连词号（-），表示"抑制错误"，即发生错误的时候，不影响其他命令的执行

