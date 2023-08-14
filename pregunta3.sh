#!/bin/bash

# a) Imprimir nombre completo y código PUCP
codigo_pucp="$1"
nombre_completo="Pedro Bustamante"  # Reemplaza con tu nombre completo
echo "Nombre completo: $nombre_completo"
echo "Código PUCP: $codigo_pucp"

# b) Crear directorios Pregunta1 y Pregunta2
mkdir -p Pregunta1 Pregunta2
chmod a+rwx Pregunta1 Pregunta2

# c) Copiar todos los archivos de la pregunta 1 en el directorio Pregunta1
cp pregunta1.c Pregunta1/

# d) Generar el archivo ejecutable de la pregunta 2 en el directorio Pregunta2
python3 pregunta2.py  # Asumiendo que el archivo ya existe y está en el mismo directorio

# e) Ejecutar programa en C con la opción 1 100 4 y calcular tiempo de ejecución
echo "Ejecutando el programa en C con la opción 1 100 4..."
time ./pregunta1 1 100 4

# f) Ejecutar programa en Python con la opción 1 100 4 y calcular tiempo de ejecución
echo "Ejecutando el programa en Python con la opción 1 100 4..."
time python3 pregunta2.py 1 100 4
