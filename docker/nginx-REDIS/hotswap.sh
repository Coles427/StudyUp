#!/usr/bin/env bash
if [ $# -eq 0 ]
  	then
    		echo "Usage ./hotswap.sh [host]"
    	exit
else  
	#current = $(cat ngnix.conf| grep -o server.*:6379;)
        #current = $(grep -o  ${current} '[^ ]*\:6379')
	#echo "current is $current"	
  		sed -i  "s/server.*:6379;/server $1:6379;/" /etc/nginx/nginx.conf
		echo "Set host to $1"
fi
/usr/sbin/nginx -s reload
