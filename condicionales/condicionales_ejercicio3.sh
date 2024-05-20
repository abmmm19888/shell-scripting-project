#!/bin/bash

# Pedir al usuario que ingrese un número
read -p "Ingrese un número: " numero

# Comprobar si el número es divisible por 2
if [ $(($numero % 2)) -eq 0 ]; then
    echo "El número $numero es divisible por 2."
else
    echo "El número $numero no es divisible por 2."
fi
