#!/bin/bash

       #Author: --Henry
      #Date: Jan 2023
# ----Install docker on centos 7 server----
# 1.Step 1:Clean up the system & Setup the docker repository
sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
#Step 2: Install the docker engine
 sudo yum install docker-ce docker-ce-cli containerd
#Step 3: Check the status, start and enable docker daemon
 sudo systemctl status docker
 sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker

run docker --version
echo "installation complete"
