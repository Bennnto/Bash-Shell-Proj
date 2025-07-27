#!/bin/bash

# CPU USAGE
cpu_usage=$(top -l 1 | grep "CPU usage" | awk '{print $3}' | sed 's/%//')

# RAM USAGE
ram_usage=$(vm_stat | awk '
  /Pages active/     {active=$3}
  /Pages inactive/   {inactive=$3}
  /Pages speculative/{spec=$3}
  /Pages wired down/ {wired=$3}
  /Pages free/       {free=$3}
  END {
    used=(active+inactive+spec+wired)*4096;
    total=(active+inactive+spec+wired+free)*4096;
    printf "%.2f", used/total*100
  }
')

# BATTERY
battery_percent=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)

{
echo "------------ System Report -------------"
echo "📆 | $(date)"
echo "🖥️ CPU | $cpu_usage"
echo "💾 RAM | $ram_usage%"
echo "🗄️ DISK "|
df -h /
echo "🔋 BAT | $battery_percent%"
}
