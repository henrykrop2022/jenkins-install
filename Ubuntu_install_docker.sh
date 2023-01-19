#!/bin/bash

       #Author: --Henry
      #Date: Jan 2023
# ----Install docker on ubuntu server----
# 1.Step 1:Clean up the system & Setup the docker repository
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
 echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/kyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null 
 #Step 2: Intall Docker Engine
 sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo systemctl status docker
sudo systemctl start docker
sudo systemctl enable docker
 sudo docker run hello-world
 echo "Installation complete"


#uninstall docker engine
#uninstall docker engine
# sudo yum remove docker-ce docker-ce-cli containerd.io docker-compose-plugin docker-ce-rootless-extras
# sudo rm -rf /var/lib/docker
# sudo rm -rf /var/lib/containerd
