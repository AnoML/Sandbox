#!/bin/bash

#Enforces high disk io
#This might need to replicate the same command more times to achieve a intended impact
#This may need a restart to refresh
echo "Enforcing high disk IO"
for cpu in 1 2 ; do
   ( while true; do find / -type f -exec cp {} /dev/null \; ; done ) &
done
