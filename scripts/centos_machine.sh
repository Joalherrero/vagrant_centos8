#!/bin/bash
echo  "Hola podman"

whoami

# # https://podman.io/getting-started/installation

#############################
# 0 - Enable repos
#############################

sudo sed -i -e "s|mirrorlist=|#mirrorlist=|g" /etc/yum.repos.d/CentOS-*

sudo sed -i -e "s|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g" /etc/yum.repos.d/CentOS-*

sudo yum update -y

#############################
# 1 - Install Podman Centos 
#############################
# sudo yum -y install podman

# podman --version
###################################
# # 2 - Install Podman Rhel8 - Beta 
###################################

# sudo yum module enable -y container-tools:1.0

# sudo yum module install -y container-tools:1.0

#############################
# # Instalar Coockpit Podman
#############################

# sudo yum install cockpit

# sudo systemctl enable --now cockpit.socket

# sudo firewall-cmd --permanent --zone=public --add-service=cockpit

# sudo firewall-cmd --reload
