#!/bin/bash 

apt-get -y update && apt-get -y upgrade 

cat list.txt | xargs apt-get -y install 

apt-get -y update && apt-get -y upgrade 

wget https://atom.io/download/deb
dpkg -i deb
apt-get -y update

add-apt-repository -y ppa:nilarimogard/webupd8
apt-get update
apt-get install pulseaudio-equalizer
