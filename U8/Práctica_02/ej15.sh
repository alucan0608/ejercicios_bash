#!/bin/bash

if [[ $1 == /* ]]
then
	contarentradas=0

 for entrada in "$1"/*
 do
 	((contarentradas++))
        
        if [[ -f "$entrada" ]]
	then
    		echo "Fichero regular: $entrada"
        elif [[ -d "$entrada" ]]
	then
        	echo "Directorio: $entrada"
        elif [[ -L "$entrada" ]]
	then
            	echo "Enlace simbólico: $entrada"
        elif [[ -b "$entrada" ]]
	then
            	echo "Archivo especial de bloque: $entrada"
        elif [[ -c "$entrada" ]]
	then
            	echo "Archivo especial de caracteres: $entrada"
        fi
    done

	echo "Número total de entradas procesadas: $contarentradas"
else
	echo "La ruta introducida debe ser absoluta"
	exit 1
fi
