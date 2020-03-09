#!/bin/bash

docker run -tid -p 9090:9090 -v /etc/localtime:/etc/localtime:ro -v $PWD/conf/prometheus.yml:/etc/prometheus/prometheus.yml  prom/prometheus:v2.16.0
