#!/bin/bash

# ./src/github.com/influxdata/telegraf/telegraf --config ./conf/cpu_mem.conf
cd src/github.com/influxdata/telegraf
make
cd -
./src/github.com/influxdata/telegraf/telegraf --config ./conf/qswitch.conf
