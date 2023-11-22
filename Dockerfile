# 基于 Ubuntu 22.04
FROM ubuntu:22.04

# 更新软件包列表
RUN apt-get update

# 安装 shellinabox
RUN apt-get install -y shellinabox

# 设置 root 用户的密码
RUN echo 'root:chungxm' | chpasswd

# 设置 shellinabox 的端口
RUN sed -i 's/SHELLINABOX_PORT=4200/SHELLINABOX_PORT=22/g' /etc/default/shellinabox

# 开启 shellinabox 服务
CMD service shellinabox start && bash
