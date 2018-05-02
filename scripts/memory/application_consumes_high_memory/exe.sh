#!/bin/bash

#Enforces a load on the system memory in MB
source ../../config.sh
echo "Enforcing a load of ${app_consume_memory_size}M on memory"
stress --vm-bytes ${app_consume_memory_size}M --vm-keep -m 1
