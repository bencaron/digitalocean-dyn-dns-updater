#!/bin/sh

while true
do

	python ./updater.py $TOKEN $DOMAIN $RECORD $RECORDTYPE
	sleep $SLEEP
done
