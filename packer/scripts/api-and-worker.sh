#!/bin/bash

mv /home/ec2-user/bjr/docker-compose.yml /home/ec2-user/bjr/docker-compose.old
mv /home/ec2-user/docker-compose.yml /home/ec2-user/bjr/docker-compose.yml
mv /home/ec2-user/.env /home/ec2-user/bjr/.env
cd /home/ec2-user/bjr && $HOME/.local/bin/docker-compose build
sudo mv /home/ec2-user/bjr.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now bjr
