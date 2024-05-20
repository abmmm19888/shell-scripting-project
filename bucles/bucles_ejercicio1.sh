#!/bin/bash

# Generar un PID aleatorio
pid=$$

# Inicializar el contador de intentos
intentos=0

# Mensaje inicial
echo "Adivina el PID del script..."

# Bucle de adivinanza
while true; do
    # Solicitar al usuario que ingrese un número
    read -p "Ingresa un número: " numero

    # Incrementar el contador de intentos
    ((intentos++))

    # Comparar el número ingresado con el PID
    if [ "$numero" -lt "$pid" ]; then
        echo "El número es menor que el PID."
    elif [ "$numero" -gt "$pid" ]; then
        echo "El número es mayor que el PID."
    else
        echo "¡Felicidades! Has adivinado el PID ($pid) en $intentos intentos."
        break
    fi
done
