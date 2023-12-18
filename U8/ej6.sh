#!/bin/bash

for (( i=1; i<=10; i++ ))
do
	((res=$i*$1))
	echo "$1 x $i = $res"
done
