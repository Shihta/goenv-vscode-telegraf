#!/bin/bash

docker run -tid -p 9273:9273 -v $PWD/conf/qswitch.conf:/etc/telegraf/telegraf.conf 10.102.50.206:5000/nfvd/telegraf:$1
