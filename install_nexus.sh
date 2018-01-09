#!/bin/bash
### USAGE: RUN THIS SCRIPT AS root USER ####
echo "### Update system ####"
sudo apt-get update
echo " ### Install java 8 ####"
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
sudo apt-get install wget
sudo rm -rf nexus-latest*
sudo wget http://www.sonatype.org/downloads/nexus-latest-bundle.tar.gz
sudo tar xvzf nexus-latest-bundle.tar.gz
sudo rm -rf sonatype*
sudo rm -rf /usr/local/nexus*
sudo rm -rf nexus-latest-bundle.tar.gz
sudo mv nexus-* /usr/local/
sudo ln -s /usr/local/nexus-* /usr/local/nexus
export RUN_AS_USER=root
/usr/local/nexus/bin/nexus start
sudo ufw allow 8081
