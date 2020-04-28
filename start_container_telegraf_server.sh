#!/bin/bash

# local
# docker run -tid -p 9273:9273 -e SERVER_ID=5 --privileged -v /dev:/dev:ro -v /proc:/hostfs/proc:ro -v /run/udev:/run/udev:ro -e HOST_PROC=/hostfs/proc -v $PWD/conf/dev-server-local.conf:/etc/telegraf/telegraf.conf --log-driver json-file --log-opt max-size=10m --log-opt max-file=3 10.102.50.206:5000/nfvd/telegraf:$1

# remote
docker run -tid -p 9274:9273 -v $PWD/conf/dev-server-remote.conf:/etc/telegraf/telegraf.conf --log-driver json-file --log-opt max-size=10m --log-opt max-file=3 10.102.50.206:5000/nfvd/telegraf:$1
