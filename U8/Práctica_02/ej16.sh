#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Uso: $0 <directorio>"
	exit 1
fi

if [ ! -e "$1" ]
then
	echo "El directorio $directorio no existe."
	exit 1
fi

if [ ! -d "$1" ]
then
	echo "$directorio no es un directorio."
	exit 1
fi

ficheros=$(find "$1" -maxdepth 1 -type f | wc -l)
subdirectorios=$(find "$1" -maxdepth 1 -type d | wc -l)

echo "Número de ficheros: $ficheros"
echo "Número de subdirectorios: $subdirectorios"
