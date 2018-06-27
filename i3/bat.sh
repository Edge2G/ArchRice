#!/bin/bash
# i3blocks battery module

# Get battery info
bat=$(cat /sys/class/power_supply/BAT0/capacity)
chr=$(cat /sys/class/power_supply/BAT0/status)

# Colors
very_low=#ff0000
low=#ff8000
medium_low=#ffff00
medium_high=#80ff00
high=#9afe2e
full=#00ff00

# Existence


# Conditions for status
if [ "$chr" = "Charging"  ];then
	echo -n "<span color='blue'> ↑</span>";
	echo -n "<span color='grey'> ↓</span>";
fi

if [ "$chr" = "Discharging"  ];then
	echo -n "<span color='grey'> ↑</span>";
	echo -n "<span color='red'> ↓</span>";
fi

# Conditions for bar
if (( "$bat" <= 100 && "$bat" >= 80 ));then
	echo -n "<span color='$full'> [:::::] $bat % </span>";
fi

if (( "$bat" <= 79 && "$bat" >= 60 ));then
	echo -n "<span color='$high'> [:::: ] $bat% </span>";
fi

if (( "$bat" <= 59 && "$bat" >= 40 ));then
	echo -n "<span color='$high'> [:::  ] $bat% </span>";
fi

if (( "$bat" <= 39 && "$bat" >= 20 ));then
	echo -n "<span color='$medium_high'> [::   ] $bat% </span>";
fi

if (( "$bat" <= 19 && "$bat" >= 5 ));then
	echo -n "<span color='$low'> [:    ] $bat% </span>";
fi

if (( "$bat" <= 4 && "$bat" >= 0 ));then
	echo -n "<span color='$very_low'> [     ] $bat% </span>";
fi
