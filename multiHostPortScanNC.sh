#!/bin/bash

portArray=(21 22 23 80 631)

while read IP; do

for port in ${portArray[@]};do

(timeout 1 nc -vz $IP $port) > /dev/null 2>&1 && echo $IP $port OPEN

done

#Redirect list of IPs below!!
done < iplist
