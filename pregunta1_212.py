import sys

a = int (sys.argv[1])
b = int (sys.argv[2])
c = int (sys.argv[3])
d = int (sys.argv[4])
e = int (sys.argv[5])
f = int (sys.argv[6])
g = int (sys.argv[7])
h = int (sys.argv[8])
i = int (sys.argv[9])

#impresion matriz
print("Su matriz es:")
print("\n",a,b,c,"\n",d,e,f,"\n",g,h,i)

#funcion suma de cada fila
def sumafila(x,y,z):
    return x + y + z
fila1 = sumafila(a,b,c)
fila2 = sumafila(d,e,f)
fila3 = sumafila(g,h,i)

#funcion suma de cada columna
def sumacolumna(j,k,l):
    return j+k+l
columna1 = sumacolumna(a,d,g)
columna2 = sumacolumna(b,e,h)
columna3 = sumacolumna(c,f,i)

#funcion suma diagonal
def sumadiagonal(m,n,o):
    return m+n+o
diagonal1 = sumadiagonal(a,e,i)
diagonal2 = sumadiagonal(c,e,g)

#verificacion
if (fila1==fila2==fila3==columna1==columna2==columna3==diagonal1==diagonal2):
    print("\nSe ha generado un cuadrado mágico")
else:
    print("\nNo se ha generado un cuadrado mágico")
