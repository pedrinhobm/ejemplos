#!/bin/bash

# a) Imprimir nombre completo y código PUCP
codigo_pucp="$1"
nombre_completo="Pedro Bustamante"  # Reemplaza con tu nombre completo
echo "Nombre completo: $nombre_completo"
echo "Código PUCP: $codigo_pucp"

# b) Crear directorios Pregunta1 y Pregunta2
mkdir -p Pregunta1 Pregunta2
chmod 777 Pregunta1 Pregunta2

# c) Copiar todos los archivos de la pregunta 1 en el directorio Pregunta1
cp pregunta1.c Pregunta1/
cp pregunta2.py Pregunta1/

# d) Generar el archivo ejecutable de la pregunta 2 en el directorio Pregunta2
cp pregunta2.py Pregunta2/
chmod +x Pregunta2/pregunta2.py 

# e) Ejecutar programa en C con la opción 1 100 4 y calcular tiempo de ejecución
echo "Ejecutando el programa en C ..."
time ./pregunta1 1 100 4

# f) Ejecutar programa en Python con la opción 1 100 4 y calcular tiempo de ejecución
echo "Ejecutando el programa en Python ..."
time python3 pregunta2.py 1 100 4

# g)  Agregar condicional para verificar argumentos
if [ "$#" -lt 3 ]; then
  echo "Debe ingresar 3 argumentos de entrada"
fi
