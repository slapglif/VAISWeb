#!/bin/bash
sudo -s;
docker stop vaisw;
docker rm vaisw;
docker rmi vaisw
cd ..;
rm -rf VAISWeb;
git clone https://github.com/slapglif/VAISWeb.git;
cd VAISWeb;
docker build -t vaisw:latest .;
docker run -d --name vaisw -p 80:1900 vaisw;
