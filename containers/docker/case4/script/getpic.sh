#!/bin/sh

apk update && apk add curl

URL=https://memeapi.zachl.tech/pic/html
LOKASI=/data

echo will run every 10 seconds

while true;
do
	fname="funny.html"
	curl -sL $URL > $fname 
	sleep 10
done
