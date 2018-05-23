#!/bin/bash

echo "Resetting system swappiness"
sysctl vm.swappiness=60
