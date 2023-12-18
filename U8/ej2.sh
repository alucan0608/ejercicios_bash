#!/bin/bash

if [[ $# -ne 2 ]]
then
	echo "Introduce dos parametros de la siguiente manera ./ej2.sh 1 2"
else
	echo "La suma de los numeros es $(($1 + $2))"
fi
