#!/bin/bash

used=$(free -mt | grep Total | awk '{print $3}')
total=$(free -mt | grep Total | awk '{print $2}')
calc=$(($used*100/$total))

if [[ $calc -ge 90 ]]
then
	echo "WARNING! RAM usage reached 90%"
else
	echo "Sufficient space in RAM"
fi
