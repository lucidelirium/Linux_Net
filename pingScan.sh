#!/bin/bash
#Example: ./script.sh 192.168.1 1 254

for lastOctet in $(seq $2 $3)
do 
ping -c 1 $1.$lastOctet > /dev/null & disown
[ $? -eq 0 ] && echo $1.$lastOctet
done


