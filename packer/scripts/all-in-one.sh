#!/bin/bash

cd /home/ec2-user/bjr && $HOME/.local/bin/docker-compose build
sudo mv /home/ec2-user/bjr.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now bjr
