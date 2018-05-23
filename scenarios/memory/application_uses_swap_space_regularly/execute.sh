#!/bin/bash

#Enforces the system to increase swappiness of the system
source ../../config.sh
echo "Enforcing a swappiness of ${app_high_swappiness}M on memory"
sysctl vm.swappiness=${app_high_swappiness}
