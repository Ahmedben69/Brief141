#!/bin/bash

#Installing Docker
sudo apt-get update
sudo apt install docker.io -y
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
#Creating container
sudo docker docker login -u bainos69 -p Supersayien69
sudo docker build -t ahmed14 .
sudo docker tag ahmed14:latest bainos69/ahmed14:latest
sudo docker push bainos69/ahmed14:latest 
sudo docker run -d -p 8080:1234 --name ahmed14 bainos69/
