#!/bin/bash

#JAVA 7 / 8
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
sudo apt-get install oracle-java7-installer
sudo update-java-alternatives -s java-8-oracle
sudo update-java-alternatives -s java-7-oracle