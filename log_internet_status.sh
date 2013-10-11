#!/bin/bash

while true
do

	INTERNETON=`nm-tool | grep "State: connected" | wc -l`
	DATE=`date`
	if [ $INTERNETON = "1" ]; then
		INTERNETON="OK"
	else
		INTERNETON="ERROR"
	fi
	sleep 1
	echo $DATE $INTERNETON
done
