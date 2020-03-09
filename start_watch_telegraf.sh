#!/bin/bash

while true; do curl http://10.103.3.74:9273/metrics 2>/dev/null |wc -l; sleep 2; done
