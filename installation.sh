#!/bin/bash

       #Author: --Henry
      #Date: Jan 2023
# ----Install Jenkins on centos 7 server----
# 1.Step 1: Install Java & Enable the Jenkins repository
sudo yum install java-11-openjdk-devel -y
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
# step 2. Install the latest stable version of Jenkins
sudo yum install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo systemctl enable jenkins
# step 3. Adjust the firewall
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload
# step 4. utilities
sudo yum install net-tools -y

#Setting up Jenkins in the browser
   # 1. http://your_ip_or_domain:8080
   # 2. sudo cat /var/lib/jenkins/secrets/initialAdminPassword
   # 3: Install suggested plugins
#Create first admin user
echo "installation complete"

# uninstallation of jenkins
# sudo service jenkins stop
# sudo yum clean all
# sudo yum -y remove jenkins
# sudo rm -rf /var/cache/jenkins
# sudo rm -rf /var/lib/jenkins/
