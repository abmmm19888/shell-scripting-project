#!/bin/bash

# Pedir al usuario que ingrese su fecha de nacimiento
read -p "Ingrese su fecha de nacimiento (1988-09-14): " fecha_nacimiento

# Obtener la fecha actual
fecha_actual=$(date +%Y-%m-%d)

# Calcular la edad
anio_nacimiento=$(date -d "$fecha_nacimiento" +%Y)
anio_actual=$(date -d "$fecha_actual" +%Y)
mes_nacimiento=$(date -d "$fecha_nacimiento" +%m)
mes_actual=$(date -d "$fecha_actual" +%m)
dia_nacimiento=$(date -d "$fecha_nacimiento" +%d)
dia_actual=$(date -d "$fecha_actual" +%d)

edad=$((anio_actual - anio_nacimiento))

# Ajustar la edad si el cumpleaños aún no ha pasado este año
if [ "$mes_actual" -lt "$mes_nacimiento" ] || { [ "$mes_actual" -eq "$mes_nacimiento" ] && [ "$dia_actual" -lt "$dia_nacimiento" ]; }; then
  edad=$((edad - 1))
fi

echo "Tienes $edad años."

