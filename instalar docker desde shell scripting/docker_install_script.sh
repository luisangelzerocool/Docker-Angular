#!/bin/bash
# Usage: docker-install-script.sh
# Author: Luis Angel Vanegas
# Version: 1.0

# tools
sudo yum install -y yum-utils device-mapper-persistent-data lvm2  net-tools nano git java-1.8.0-openjdk
# install docker steps
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install -y docker-ce docker-ce-cli containerd.io

sudo systemctl start docker

sudo usermod -aG docker $USER

sudo systemctl enable docker

sudo docker run --rm hello-world

# install docker-compose steps
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

sudo docker-compose -version

sudo setfacl -m u:1000:rw /var/run/docker.sock && echo "=> ACLs on /var/run/docker.sock OK"

usermod -aG docker vagrant
# run jenkins
mkdir -p /var/jenkins_home
chown -R 1000:1000 /var/jenkins_home/

docker run -p 8080:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -d --name jenkins luiszerocool/jenkins:latest
