#使用Ubuntu 22.04作为基础镜像
FROM ubuntu:22.04

#安装 shellinabox
RUN apt-get update && 
    apt-get install -y --no-install-recommends shellinabox && 
    apt-get clean && 
    rm -rf /var/lib/apt/lists/* /var/tmp/*

#设置root用户的密码为“chungxm”
RUN echo "root:chungxm" | chpasswd

#暴露22端口
EXPOSE  22

#启动 shellinabox
CMD ["/usr/bin/shellinaboxd","-t","-s","/:LOGIN"]
