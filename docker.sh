#!  /bin/bash
yum -y remove docker
yum -y update
yum -y install yum-utils
yum-config-manager --add-repo https://docs.docker.com/engine/installation/linux/repo_files/centos/docker.repo
yum makecache
yum -y install docker-engine
systemctl start docker