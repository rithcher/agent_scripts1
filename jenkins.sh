#!/bin/bash

sudo yum install java-1.8.0-openjdk-devel -y

curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo

sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

sudo yum install jenkins -y

sudo systemctl start jenkins

systemctl status jenkins

sudo systemctl enable jenkins

sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp

sudo firewall-cmd --reload

echo "Initial admin password: "
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

echo "Don't forget to add the jenkins network tag in your VM settings. "
