#!/bin/bash

portArray=(21 22 23 80 631)
#IP=127.0.0.1

while read IP; do

for port in ${portArray[@]};do

(timeout 1 echo >/dev/tcp/$IP/$port) > /dev/null 2>&1 && echo “$IP $port OPEN”

done 

done < iplist
