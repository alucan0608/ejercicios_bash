#!/bin/bash
if [ $# -ne 1 ]
then
	echo "ERROR: Escribe como parámetro el nombre de un usuario"
	exit 1
fi


if id "$1" >/dev/null 2>&1
then
	echo "El usuario $1 está dado de alta en el sistema"

		if who | grep -w "$1" >/dev/null 2>&1
		then
        		echo "El usuario $1 ha iniciado sesión"
		else
        		echo "El usuario $1 no ha iniciado sesión"
    		fi
else
    	echo "El usuario $1 no está dado de alta en el sistema"
fi
