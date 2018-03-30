#!/bin/bash

input=$1

function Convert(){
	bytelimit=1024
	kblimit=((1024*bytelimit))
	mblimit=((1024*kblimit))
	
	if [ $input -lt $bytelimit ];then
		echo "${input}B"
	elif [ $input -lt $kblimit ];then
		echo "$((input/bytelimit))KB" 
	elif [ $input -lt $mblimit ];then
		echo "$((input/kblimit))MB"
	else
		echo "$((input/mblimit))GB"
	fi
}

export -f Convert
