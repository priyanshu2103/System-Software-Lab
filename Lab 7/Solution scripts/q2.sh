#!/bin/bash
# temp=$(lsusb | wc -l)	
a=$(lsusb | wc -l)

while [[ 1 ]]; do
	
	temp=$a 
	a=$(lsusb | wc -l)
	
	if [[ a -gt temp ]]; then
		#statements
		echo Plugged
	fi
	if [[ a -lt temp ]]; then
		#statements
		echo Unplugged
	fi
done