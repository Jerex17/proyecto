def crear_tablero(filas, columnas):
    tablero = []
    for i in range(filas):
        fila = []
        for j in range(columnas):
            if (i + j) % 2 == 0:
                fila.append('#')
            else:
                fila.append('*')
        tablero.append(fila)
    return tablero

def mostrar_tablero(tablero):
    for fila in tablero:
        print(' | '.join(fila))

tablero = crear_tablero(8, 8)
mostrar_tablero(tablero)
