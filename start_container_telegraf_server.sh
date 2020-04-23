#!/bin/bash

docker run -tid -p 9273:9273 -e SERIAL_NUMBER=QTFCR27330032 -e SERVER_ID=5 --privileged -v /dev:/dev:ro -v /proc:/hostfs/proc:ro -v /run/udev:/run/udev:ro -e HOST_PROC=/hostfs/proc -v $PWD/conf/dev_server_template.conf:/etc/telegraf/telegraf.conf --log-driver json-file --log-opt max-size=10m --log-opt max-file=3 10.102.50.206:5000/nfvd/telegraf:$1
