#!/bin/bash

apt-get update
apt-get install -y wget 

curl -s https://api.github.com/repos/project-copacetic/copacetic/releases/latest \
| grep "browser_download_url.*linux_amd64.tar.gz" \
| grep -v -w "sbom" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi -
tar -xzf copa*
mv copa /usr/local/bin/copa

snap install trivy

touch /tmp/finished