if [ -z "$1" ]
then
    echo "Nombre: Marcelo Jon Rojas Ludeña"
    echo "Código: 20190923"
    echo "--------------"
    mkdir Pregunta1
    mkdir Pregunta2
    chmod 777 Pregunta1
    chmod 777 Pregunta2
    cp P1_20190923.py Pregunta1
    gcc p2_20190923.c -o Pregunta2/p1 -lm
    cd Pregunta2
    echo "tiempo de ejecución p2 con time"
    time ./p1 4
    echo "--------------"
    start1=$(date +%s%N)
    ./p1 4
    end1=$(date +%s%N)
    echo "
    tiempo de ejecución p2 sin time"
    echo $((end1-start1))
else
    cowsay -f tux "Este programa no recibe argumentos de entrada"
fi
