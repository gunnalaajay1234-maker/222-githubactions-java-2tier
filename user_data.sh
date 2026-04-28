#!/bin/bash
set -e

apt update -y
apt install openjdk-17-jdk maven git -y

cd /home/ubuntu
git clone https://github.com/gunnalaajay1234-maker/222-githubactions-java-2tier.git

cd 222-githubactions-java-2tier/app

mvn clean package -DskipTests

nohup java -jar target/*.jar > app.log 2>&1 &