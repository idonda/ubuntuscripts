#!/bin/sh
cd /root
wget https://download.webmin.com/jcameron-key.asc
apt-key add jcameron-key.asc
rm -f jcameron-key.asc
cp /root/scripts/webmin.list /etc/apt/sources.list.d/
apt-get install apt-transport-https -y
apt-get update
apt-get install webmin -y
