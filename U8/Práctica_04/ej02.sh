#!/bin/bash

function mostrar_menu(){
    echo "*************************************************"
    echo "* SELECIONA UNA OPCIÓN                          *"
    echo "*                                               *"
    echo "*  1. Reiniciar el equipo ahora                 *"
    echo "*  2. Reiniciar el equipo dentro de N minutos   *"
    echo "*                                               *"
    echo "*************************************************"
    read -p " Seleccione una opción: " opcion
}

mostrar_menu

case $opcion in

    1) shutdown -r now ;;
    2)
	read -p " ¿En cuántos minutos quiere reiniciar el equipo? " min
        shutdown -r $min
        ;;
    *) mostrar_menu ;;
esac
