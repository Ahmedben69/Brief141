#!/bin/bash

#Installing Docker
sudo apt-get update
sudo apt install docker.io -y
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
#Creating container
sudo docker run -d -p 8080:1234 --name ahmed  Ahmedben69/ahmedbrief14:latest
