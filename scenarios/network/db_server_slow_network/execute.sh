#!/bin/bash

#Enforces a slow network(Packet delay)
source ../../config.sh
echo "Enforcing a packet delay of maximum ${network_packet_delay}ms"
tc qdisc change dev eth1 root netem delay ${network_packet_delay}ms 20ms distribution normal
