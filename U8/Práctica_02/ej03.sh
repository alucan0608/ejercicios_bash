#!/bin/bash

if [[ $# -eq 0 ]]
then
	echo "Introduce dos parametros de la siguiente manera ./ej0.sh parametro"
else
	if [[ -f  $1 ]]
	then
        	echo "El archivo existe"
	else
		echo "El archivo no existe"
	fi

fi
