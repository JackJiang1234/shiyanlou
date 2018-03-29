#!/bin/bash

name=$1
exist=$(sudo service name status 2>&1 | grep "unrecognized")
if [ $exist != "" ];then
	echo "Error: Service Not Found"
else
	stopped=$(sudo service name status | grep "stopped")
	if [ $stopped != "" ];then
		echo "Restarting"
		sudo service name start
	else
		echo "is Running"
	fi
fi