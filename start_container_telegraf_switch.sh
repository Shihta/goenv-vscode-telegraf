#!/bin/bash

docker run -tid -p 9273:9273 -v $PWD/conf/dev-switch.conf:/etc/telegraf/telegraf.conf --log-driver json-file --log-opt max-size=10m --log-opt max-file=3 10.102.50.206:5000/nfvd/telegraf:$1
