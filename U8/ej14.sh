#!/bin/bash

if [[ $1 == /* ]]
then
	for entrada in "$1"/*
	do
		((contarentradas++))
        	if [[ -f "$entrada" ]]
		then
			echo "Fichero: $entrada"
        	elif [[ -d "$entrada" ]]
		then
			echo "Directorio: $entrada"
        	fi
    	done
	echo "Número total de entradas procesadas: $contarentradas"
else
	echo "La ruta introducida debe ser absoluta"
	exit 1
fi
