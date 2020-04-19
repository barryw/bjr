#!/bin/bash

sudo yum update -y
sudo yum install -y git python37
sudo amazon-linux-extras install docker
sudo systemctl enable --now docker
sudo service docker start
sudo usermod -a -G docker ec2-user

/usr/bin/pip3 install docker-compose --user
cd /home/ec2-user
git clone https://github.com/barryw/bjr.git

sudo reboot
