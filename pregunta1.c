#include <stdio.h>
#include <stdlib.h>

int esPrimo(int num) {
    if (num <= 1)
        return 0;
    for (int i = 2; i * i <= num; i++) {
        if (num % i == 0)
            return 0;
    }
    return 1;
}

int contarNumeros(int A, int B, int C) {
    int count = 0;
    if (C == 1) {
        // Contar primos
        for (int i = A; i <= B; i++) {
            if (esPrimo(i))
                count++;
        }
    } else {
        for (int i = A; i <= B; i++) {
            int num = i;
            while (num % C == 0) {
                num /= C;
                if (num == 1) {
                    count++;
                    break;
                }
            }
        }
    }
    return count;
}

int main(int argc, char *argv[]) {
    if (argc != 4) {
        printf("Debe ingresar 3 argumentos de entrada.\n");
        return 1;
    }

    int A = atoi(argv[1]);
    int B = atoi(argv[2]);
    int C = atoi(argv[3]);

    int resultado = contarNumeros(A, B, C);

    if (C == 1)
        printf("Hay %d números primos en este rango.\n", resultado);
    else
        printf("Hay %d potencias de %d en este rango.\n", resultado, C);

    return 0;
}
