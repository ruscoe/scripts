#!/usr/bin/env bash

# Show only the CPU temperature.
temp=`sensors | grep 'CPU temperature'`
# Split string after 'CPU temperature:'; remove spaces.
echo $temp | awk -F ':' '{print $2}' | sed 's/\s\+//g'
