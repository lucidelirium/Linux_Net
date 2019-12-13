#!/bin/bash

portArray=(21 22 23 80)
IP=10.1.2.128

for port in ${portArray[@]};do

(timeout 1 nc -vz $IP $port) > /dev/null 2>&1 && echo $IP $port OPEN

done


