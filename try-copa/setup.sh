#!/bin/bash

apt-get update
apt-get install -y wget 

wget https://github.com/project-copacetic/copacetic/releases/download/v0.4.1/copa_0.4.1_linux_amd64.tar.gz
tar -xzf copa_0.4.1_linux_amd64.tar.gz
mv copa /usr/local/bin/copa

snap install trivy