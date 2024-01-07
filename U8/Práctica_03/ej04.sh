#!/bin/bash
while IFS=, read -r accion nombre apellido1 apellido2 grupo
do

    bash ej03.sh $accion $nombre $apellido1 $apellido2 $grupo

done < usuarios.txt
