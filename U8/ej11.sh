#!/bin/bash

num=$((1 + $RANDOM % 100))

while [[ $adivina -ne $num ]]
do
read -p "Adivina el numero: " adivina

	if [[ $adivina =~ [0-9] ]]
	then

	if [[ $adivina -eq $num ]]
	then
		echo "Enhorabuena has acertado"
		break
	elif [[ $adivina -gt $num ]]
	then
		echo "El numero es menor"
	elif [[ $adivina -eq 0 ]]
	then
		echo "Te has rendido"
		break
	else
		echo "El numero es mayor"
	fi
else
	echo "Introduce un numero"
fi

done
