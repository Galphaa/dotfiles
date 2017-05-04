#!/bin/bash 

apt-get -y update && apt-get -y upgrade 

# Installing all files needed for first usage.

cat list.txt | xargs apt-get -y install   

apt-get -y update && apt-get -y upgrade 


# Installing ATOM.

cd
mkdir .installs
cd .installs
wget https://atom.io/download/deb    
dpkg -i deb
apt-get -y update


# Installing synergy 1.8.8 

wget http://archive.getdeb.net/ubuntu/pool/apps/s/synergy/synergy_1.8.8-1~getdeb1_amd64.deb    
dpkg -i synergy_1.8.8-1~getdeb1_amd64.deb
apt-get -f install -y


# installing repo and then installing pulseaudio-equalizer for more easy control for audio system.

add-apt-repository -y ppa:nilarimogard/webupd8 
apt-get update
apt-get install pulseaudio-equalizer

# Disable Chrome annoying keyloging after this command once will be requested.

rm ~/.local/share/keyrings/*
