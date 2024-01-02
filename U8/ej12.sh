#!/bin/bash

function mostrar_menu(){
    echo "**************************"
    echo "* Seleciona una opcion   *"
    echo "*   1- Sumar             *"
    echo "*   2- Restar            *"
    echo "*   3- Dividir           *"
    echo "*   4- Multiplicar       *"
    echo "*   0- Salir             *"
    echo "**************************"

read -p "Opcion: " menu

	case $menu in
	    1) sumar;;
	    2) restar;;
	    3) dividir;;
	    4) multiplicar;;
	    0) exit 1;;
	    *) echo "ERROR: Opcion no valida";;
	esac
}

function sumar(){
    read -p "Introduce un numero: " num1
    read -p "Introduce otro numero: " num2
    ((resultado=num1+num2))
    echo "$num1 + $num2 = $resultado"
}

function restar(){
    read -p "Introduce un numero: " num1
    read -p "Introduce otro numero: " num2
    ((resultado=num1-num2))
    echo "$num1 - $num2 = $resultado"
}

function dividir(){
    read -p "Introduce un numero: " num1
    read -p "Introduce otro numero: " num2
    ((resultado=num1/num2))
    echo "$num1 / $num2 = $resultado"
}

function multiplicar(){
    read -p "Introduce un numero: " num1
    read -p "Introduce otro numero: " num2
    ((resultado=num1*num2))
    echo "$num1 x $num2 = $resultado"
}

mostrar_menu

while [[ $menu -ne 0 ]]
do
mostrar_menu
done
