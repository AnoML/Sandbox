#!/bin/bash

file="./app.properties"

while IFS='=' read -r key value
  do
    key=$(echo $key | tr '.' '_')
    eval ${key}=\${value}
  done < "$file"

stress --cpu ${cpu} --io ${io} --vm ${vm} --vm-bytes ${vm_bytes} --timeout ${timeout} --verbose
