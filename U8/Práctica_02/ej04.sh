#!/bin/bash

if [[ -r $1 ]]
then
	cat $1
else
	echo "El archivo $1 no existe"
fi
