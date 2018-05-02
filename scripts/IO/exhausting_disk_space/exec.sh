#!/bin/bash

#Enforces the system to run out of disk space
source ../../config.sh
echo "Creating a file of ${disk_fill_file_size}M to fill the memory"
dd if=/dev/zero of=~/output.dat  bs=${disk_fill_file_size}M  count=1
