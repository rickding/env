#!/bin/bash

# apt update
# apt -y install software-properties-common

# https://www.cnblogs.com/bluestorm/p/5677625.html

# oracle openjdk
add-apt-repository ppa:openjdk-r/ppa
apt-get update

apt-get install -y openjdk-7-jdk
apt-get install -y openjdk-8-jdk-headless

# oracle java jdk
add-apt-repository ppa:webupd8team/java
apt-get update

apt-get install -y oracle-java6-installer
apt-get install -y oracle-java7-installer
apt-get install -y oracle-java8-installer

update-java-alternatives --list

update-alternatives --config java
update-alternatives --config javac
