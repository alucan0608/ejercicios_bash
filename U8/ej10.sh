#!/bin/bash

contador=1
divisor=0

if [[ $1 -eq 1 || $1 -eq 2 ]]
then
	echo "$1 es un numero primo"
else
	while [[ $contador -le $1 ]]
	do
	operacion=$numero%$contador
	if [[ $operacion -eq 0 ]]
	then
		div=$div+1
	fi
	((contador++))
	done

	if [[ $div -gt 2 ]]
	then
		echo "$1 es un numero primo"
	else
		echo "$1 no es un numero primo"
	fi

fi
