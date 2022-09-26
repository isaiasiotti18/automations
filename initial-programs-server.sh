#! /usr/bin/env bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

source ~/.bashrc
. ~/.nvm/nvm.sh

nvm install node

sudo yum remove docker docker-engine docker.io containerd runc

sudo yum update

sudo yum install docker

sudo usermod -a -G docker ec2-user

id ec2-user

newgrp docker

# 1. Get pip3 
sudo yum install python3-pip
 
# 2. Then run any one of the following
sudo pip3 install docker-compose # with root access

sudo systemctl enable docker.service

sudo systemctl start docker.service