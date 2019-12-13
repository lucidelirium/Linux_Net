#!/bin/bash
#Credit to https://linuxconfig.org/bash-scripts-to-scan-and-monitor-network

is_alive_ping()
{
  ping -c 1 $1 > /dev/null
  [ $? -eq 0 ] && echo $i
}

for i in 10.1.{1..6}.{1..254} 
do
is_alive_ping $i & disown
done

