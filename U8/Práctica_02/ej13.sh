#!/bin/bash

read -p "Introduce un numero: " num1
while [[ $num1 -ne 0 ]]
do
    read -p "Introduce otro numero: " num1
    ((res=res+num1))
    echo "$res"
done
