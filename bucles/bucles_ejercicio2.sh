#!/bin/bash

# Pedir al usuario que ingrese el nombre del archivo a agregar
read -p "Ingrese el nombre del archivo a agregar: " nombre_archivo

# Confirmar la acción al usuario
echo "Se agregará el archivo $nombre_archivo. ¿Está seguro? (s/n)"
read confirmacion

if [ "$confirmacion" = "s" ]; then
    # Crear el archivo
    touch "$nombre_archivo"

    # Esperar 3 segundos
    sleep 3

    # Mostrar la lista de archivos actuales
    echo "Lista de archivos actuales:"
    ls

    # Preguntar al usuario si desea borrar un archivo
    echo "¿Desea borrar un archivo? (s/n)"
    read borrar_archivo

    if [ "$borrar_archivo" = "s" ]; then
        # Pedir al usuario que ingrese el nombre y formato del archivo a borrar
        read -p "Ingrese el nombre del archivo a borrar: " archivo_borrar
        read -p "Ingrese el formato del archivo a borrar: " formato_borrar

        # Verificar si el archivo existe
        if [ -f "$archivo_borrar.$formato_borrar" ]; then
            echo "El archivo $archivo_borrar.$formato_borrar fue encontrado."

            # Borrar el archivo
            rm "$archivo_borrar.$formato_borrar"
            echo "El archivo $archivo_borrar.$formato_borrar ha sido eliminado."
        else
            echo "El archivo $archivo_borrar.$formato_borrar no fue encontrado."
        fi
    else
        echo "Ok, no borraremos ningún archivo."
    fi
else
    echo "Operación cancelada. No se agregó ningún archivo."
fi


