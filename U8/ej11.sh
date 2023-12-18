#!/bin/bash

num=54

while [[$adivina -ne $num ]]
do
read -p "Adivina el numero: " adivina
	if [[ $adivina -eq $num ]]
	then
		echo "Enhorabuena has acertado"
	else
		if [[ $adivina -gt $num ]]
		then
			echo "El numero es menor"
		else
			echo "El numero es mayor"
		fi
	fi

