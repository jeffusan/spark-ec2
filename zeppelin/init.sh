#!/bin/bash

pushd /root > /dev/null

## Get maven
sudo wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
sudo yum install -y apache-maven

## Get zeppelin
#git clone https://github.com/apache/incubator-zeppelin.git zeppelin
git clone https://github.com/felixcheung/incubator-zeppelin.git
#git clone https://github.com/felixcheung/incubator-zeppelin/tree/r zeppelin

cd ./zeppelin

git checkout r

mvn clean package -Pspark-1.5 -Dhadoop.version=2.2.0 -Phadoop-2.2 -DskipTests

popd > /dev/null
