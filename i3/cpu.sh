#!/bin/bash
# i3blocks cpu module

# Get cpu temperature
cpu=$(cat /sys/bus/platform/devices/coretemp.0/hwmon/hwmon2/temp1_input)

let cpu=$((cpu))/1000

# Colors
cool=#23807E
medium=#CC7B10
hot=#ff0000

# Conditions
if (( "$cpu" >= 0 && "$cpu" <= 40 ));then
	echo -n "<span color='$cool'> Temp: $cpu °C </span>";
fi

if (( "$cpu" >= 41 && "$cpu" <= 65 ));then
	echo -n "<span color='$medium'> Temp: $cpu °C </span>";
fi

if (( "$cpu" >= 66 && "$cpu" <= 100 ));then
	echo -n "<span color='$hot'> Temp: $cpu °C </span>";
fi
