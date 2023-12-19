#!/bin/bash

function mostrar_menu(){
	echo "**************************"
	echo "* Seleciona una opcion   *"
	echo "*   1- Sumar             *"
	echo "*   2- Restar            *"
	echo "*   3- Dividir           *"
	echo "*   4- Multiplicar       *"
	echo "*   5- Salir             *"
	echo "**************************"

read -p "Opcion: " menu

}

function sumar(){
	((resultado=num1+num2))
	echo "$num1 + $num2 = $resultado"
}

function restar(){
        ((resultado=num1-num2))
        echo "$num1 - $num2 = $resultado"
}

function dividir(){
        ((resultado=num1/num2))
        echo "$num1 / $num2 = $resultado"
}

function multiplicar(){
        ((resultado=num1*num2))
        echo "$num1 x $num2 = $resultado"
}

mostrar_menu

case menu in
  1) sumar;;
  2) restar;;
  3) dividir;;
  4) multiplicar;;
  5) ;;
