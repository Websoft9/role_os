## Desktop

我们尽量安装完整版的桌面，而不是精简版。一般完整版的桌面包接近2G。

### 包选择

桌面是Linux发行版仓库标配的软件包，无需引入外部仓库。我们通过对 Ubuntu 仓库 [web 版](https://packages.ubuntu.com/)的搜索和研究，得出如下结论

* KDE的包名为：kde-plasma-desktop 或 kde-full
* GNOM的包名为：gnome

> kde-full 为KDE的完整包，包含 kde-plasma-desktop

### 显示管理器

安装的时候有些包需要选择：GDM, KDM, LightDM, SDDM，这是什么？  

这些其实是显示管理器，它们提供图形化登录并处理用户身份验证。GDM 建议用于 GNOME，SDDM 建议用于 KDE


## 常见问题

#### 使用 root 账号登录 Desktop 不小心锁定了无法解锁？

是的，只有重启服务器才行。解锁方案暂未知
