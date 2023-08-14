import sys

def es_primo(num):
    if num <= 1:
        return False

    for i in range(2, int(num**0.5) + 1):
        if num % i == 0:
            return False

    return True

def contar_numeros(A, B, C):
    count = 0
    if C == 1:
        # Contar primos
        for i in range(A, B + 1):
            if es_primo(i):
                count += 1
    else:
        # Contar potencias de C
        for i in range(A, B + 1):
            num = i
            while num % C == 0:
                num //= C
                if num == 1:
                    count += 1
                    break
    return count

if __name__ == "__main__":
    if len(sys.argv) < 4:
        print("Debe ingresar 3 argumentos de entrada.")
        sys.exit(1)

    A = int(sys.argv[1])
    B = int(sys.argv[2])
    C = int(sys.argv[3])

    resultado = contar_numeros(A, B, C)

    if C == 1:
        print(f"Hay {resultado} números primos en este rango.")
    else:
        print(f"Hay {resultado} potencias de {C} en este rango.")
