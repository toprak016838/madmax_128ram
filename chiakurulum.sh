#!/bin/bash

# apt-get update

dpkg --configure -a
apt update -y
apt upgrade -y 
apt-get update -y 
apt-get upgrade -y
sudo apt-get install git -y
sudo apt-get install make -y
sudo apt-get install screen -y
sudo apt --reinstall install fuse -y 
sudo apt-get install unzip -y

mkdir /root/plt

sudo mkdir /mnt/ramdisk
sudo mount -t tmpfs -o rw,size=131G tmpfs /mnt/ramdisk

fdisk -l
mkdir /disk1 && mkfs -t ext3 /dev/sdb && mount /dev/sdb /disk1

unzip kurulum.zip

cd ~


apt-get install -y nano unzip zip curl sshpass python3 python3-pip screen git

cd ~

mkdir /root/.config
mkdir /root/.config/rclone
mv kurulum/rclone.conf .config/rclone
mv kurulum/accounts .config/rclone
cd
mv kurulum/gonder1.sh /disk1
mv kurulum/gonder2.sh /disk1
mv kurulum/gonder3.sh /disk1
mv kurulum/gonder4.sh /disk1
screen -dmS gonder1 bash gonder1.sh && screen -dmS gonder2 bash gonder2.sh && screen -dmS gonder3 bash gonder3.sh && screen -dmS gonder4 bash gonder4.sh
mkdir /disk1/upload4 && mkdir /disk1/upload1 && mkdir /disk1/upload3 && mkdir /disk1/upload2
cd
apt install dos2unix

sleep 1
mv kurulum/move.sh /disk1
cd /disk1
mv move.sh /disk1/plt && dos2unix /disk1/plt/move.sh && cd /disk1/plt && chmod 777 move.sh && screen -dmS move bash move.sh && cd

cd ~

cp kurulum/upload.sh /disk1
cd /disk1
cp -r upload.sh /disk1/upload1 && cp -r upload.sh /disk1/upload2 && cp -r upload.sh /disk1/upload3 && cp -r upload.sh /disk1/upload4 && chmod 777 /disk1/upload1/upload.sh && chmod 777 /disk1/upload2/upload.sh && chmod 777 /disk1/upload3/upload.sh && chmod 777 /disk1/upload4/upload.sh && dos2unix /disk1/upload1/upload.sh && dos2unix /disk1/upload2/upload.sh && dos2unix /disk1/upload3/upload.sh && dos2unix /disk1/upload4/upload.sh && cd /disk1/upload1 && sleep 1 && screen -dmS upload1 bash upload.sh && cd && cd /disk1/upload2 && sleep 1 && screen -dmS upload2 bash upload.sh && cd && cd /disk1/upload3 && sleep 1 && screen -dmS upload3 bash upload.sh && cd && cd /disk1/upload4 && screen -dmS upload4 bash upload.sh
cd
apt install pip -y && apt install screen -y && sudo apt install -y libsodium-dev cmake g++ git && sudo apt update && sudo apt install cmake build-essential libnuma-dev -y
cd


sudo -v ; curl https://rclone.org/install.sh | sudo bash


sudo apt-get install -y rand

cd ~
mv /root/kurulum/x.sh /root
mv /root/kurulum/automadmax.sh /root
screen -dmS oto bash -c 'bash automadmax.sh'

screen -dmS plot bash -c 'bash x.sh'

cd ~

screen -x plot
cd ~

