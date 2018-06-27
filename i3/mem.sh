#!/bin/bash

# Get memory info
mem=$(free -h | awk '/Mem:/ { print $3 } /buffers\/cache/ { print $3 }')
swp=$(free -h | awk '/Swap:/ { print $3 } /buffers\/cache/ { print $3 }')

echo -n "<span color='green'> MEM: $mem</span>";
echo -n "<span color='yellow'> SWP: $swp </span>";
