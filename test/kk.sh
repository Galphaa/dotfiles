#!/bin/bash

#pidof $1 > PID; cut -d ' ' --output-delimiter=$'\n' -f 1- PID > list_PID 

#[ -f "text.txt" ] && echo dd"text.txt exist" || touch text.txt
NAME=`pidof $1`  # this is value for proces id of program we want

while true 
do 
	ps -p $NAME -o %mem > test.txt 
	cat test.txt
	critical=`awk 'FNR==2' test.txt` 
	s=${critical//[[:blank:]]/}
	if (( $(bc <<< "$2 > $s") ))
	then 
		kill -11 $NAME 
		break
	elif (( $(bc <<< "$2 > $s") ))
	then
		killall -11 $1
		break
	fi
	sleep 1
done

# cleaning

#rm PID list_PID test.txt
