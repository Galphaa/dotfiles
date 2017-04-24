#!/bin/bash 

apt-get -y update && apt-get -y upgrade 

cat list.txt | xargs apt-get -y install   # Installing all files needed for first usage

apt-get -y update && apt-get -y upgrade 

cd
mkdir .installs
cd .installs
wget https://atom.io/download/deb    # Installing ATOM
dpkg -i deb
apt-get -y update

wget http://archive.getdeb.net/ubuntu/pool/apps/s/synergy/synergy_1.8.8-1~getdeb1_amd64.deb   # Installing synergy 1.8.8 
dpkg -i synergy_1.8.8-1~getdeb1_amd64.deb
apt-get -f install 

add-apt-repository -y ppa:nilarimogard/webupd8   # installing repo and then installing pulseaudio-equalizer for more easy control for audio system
apt-get update
apt-get install pulseaudio-equalizer


