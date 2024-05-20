 Paso 1: Clonar el Repositorio

1. Eliminar cualquier carpeta existente del proyecto:
    
    rm -rf ~/shell-scripting-project
    

2. Clonar el repositorio:
    
    git clone https://github.com/abmmm19888/shell-scripting-project
    

 Paso 2: Crear Estructura de Directorios

1. Navegar al directorio del proyecto:
    
    cd ~/shell-scripting-project
    

2. Crear las carpetas necesarias:
    
    mkdir variables parametros condicionales sustitucion_de_comandos bucles
    

 Paso 3: Crear y Editar los Scripts

1. Crear el primer script de variables :
    
    nano variables/variables_ejercicio1.sh
    

    Contenido del archivo variables_ejercicio1.sh:
    
    #!/bin/bash
    nombre="Abraham"
    edad=35
    ciudad="Madrid"
    echo "Mi nombre es $nombre, tengo $edad años y vivo en $ciudad."
    

2. Crear el segundo script de variables:
    
    nano variables/variables_ejercicio2.sh
    

    Contenido del archivo variables_ejercicio2.sh:
    
    #!/bin/bash
    read -p "Ingrese su actividad favorita: " actividad
    read -p "Ingrese su comida favorita: " comida
    echo "Mi actividad favorita es $actividad. Mi comida favorita es $comida."
    

3. Crear el primer script de parámetros:
    
    nano parametros/parametros_ejercicio1.sh
    

    Contenido del archivo parametros_ejercicio1.sh:
    
    #!/bin/bash
    echo "Primer parámetro: $1"
    echo "Tercer parámetro: $3"
    

4. Crear el segundo script de parámetros:
    
    nano parametros/parametros_ejercicio2.sh
    

    Contenido del archivo parametros_ejercicio2.sh:
    
    #!/bin/bash
    echo "En el fichero $1 existen $# parámetros."
  

5. Crear el primer script de condicionales:
    
    nano condicionales/condicionales_ejercicio1.sh
    

    Contenido del archivo condicionales_ejercicio1.sh:
    
    #!/bin/bash
    if [ "$(whoami)" != "root" ]; then
        echo "No tiene acceso como root."
    else
        echo "Acceso como root."
    fi
    

 Paso 4: Crear el archivo README.md

1. Crear y editar el archivo README.md:
    
    nano README.md
    

    Contenido del archivo README.md:
    
    # Shell Scripting Project

    Este proyecto contiene varios scripts en Shell para practicar conceptos básicos como variables, parámetros, condicionales, bucles y sustitución de comandos.

    Estructura del Proyecto

    - variables/
      - variables_ejercicio1.sh
      - variables_ejercicio2.sh
    - parametros/
      - parametros_ejercicio1.sh
      - parametros_ejercicio2.sh
    - condicionales/
      - condicionales_ejercicio1.sh
    - sustitucion_de_comandos/
      - (Agregar los scripts aquí)
    - bucles/
      - (Agregar los scripts aquí)

     Cómo Ejecutar los Scripts

    
    bash <ruta_del_script>
    

  Paso 5: Confirmar y Subir los Cambios

1. Agregar todos los cambios al área de preparación:
    
    git add .
    

2. Confirmar los cambios con un mensaje descriptivo:
    
    git commit -m "Agregar scripts de variables, parámetros y condicionales, y archivo README.md"
    

3. Subir los cambios al repositorio remoto:
    
    git push origin main








 
