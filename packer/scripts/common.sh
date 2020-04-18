#!/bin/bash

sudo yum update -y
sudo yum install -y git python37
git clone https://github.com/barryw/bjr.git /home/ec2-user/bjr
sudo amazon-linux-extras install docker
sudo systemctl enable --now docker
sudo service docker start
sudo usermod -a -G docker ec2-user
/usr/bin/pip3 install docker-compose --user
sudo reboot
