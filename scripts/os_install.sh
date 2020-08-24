## 自定义镜像安装各个云所需的组件

## 体验设计

1. 询问在哪个云上安装  
2. 安装完成提示制作镜像
3. 上传镜像到镜像制作机
4. 镜像制作机通过程序提交到云平台审核

# 阿里云
# 安装：安骑士，云助手，cloud-init

# Oracle Linux yum安装速度比较慢
if [ $(ls /etc/yum.repos.d  | grep "oracle") ]; then yum install -y oraclelinux-developer-release-e* oracle-nodejs-release-e* oracle-epel-release-e*; fi

if ! python3 -c 'import setuptools' >& /dev/null; then
  yum -y install python3-pip
fi
# 备份旧版cloud-init
test -d /etc/cloud && mv /etc/cloud /etc/cloud-old
# 下载并解压阿里云版cloud-init
wget https://ecs-image-utils.oss-cn-hangzhou.aliyuncs.com/cloudinit/cloud-init-19.1.2.tgz
tar -zxvf ./cloud-init-19.1.2.tgz
# 安装cloud-init
issue_major=$( cat /etc/redhat-release | grep -Eo '[0-9]+\.?[0-9]+' | head -1 | awk -F'.' '{printf $1}')
bash ./cloud-init-*/tools/deploy.sh centos "$issue_major"
