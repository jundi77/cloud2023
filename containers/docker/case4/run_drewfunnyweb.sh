#!/bin/sh
docker rm -f drewfunnyweb

docker container run \
	-dit \
	--name drewfunnyweb \
    -v $(pwd)/script:/script \
    --workdir /data \
	--publish 9999:9999 \
	python:3.13.0a1-alpine3.17 \
	/bin/sh -c "/script/getpic.sh & python3 -m http.server 9999 -d /data"

