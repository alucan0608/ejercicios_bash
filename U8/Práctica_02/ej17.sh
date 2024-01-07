#!/bin/bash
if [ "$#" -ne 2 ]
then
	echo "ERROR: Deben indicarse dos parámetros"
	exit 1
fi

if [ ! -f "$1" ]
then
	echo "ERROR: El primer parámetro no es un archivo ordinario."
	exit 1
fi

if [ -e "$2" ]
then
	echo "Error: Ya existe un identificador con el nombre $2"
	exit 1
fi

cp "$1" "$2"

echo "Copia realizada correctamente"
