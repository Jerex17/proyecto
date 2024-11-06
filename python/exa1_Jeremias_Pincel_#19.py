nombre = """

             
                            ██████╗░██╗███╗░░██╗░█████╗░███████╗██╗░░░░░ 
                            ██╔══██╗██║████╗░██║██╔══██╗██╔════╝██║░░░░░ 
                            ██████╔╝██║██╔██╗██║██║░░╚═╝█████╗░░██║░░░░░ 
                            ██╔═══╝░██║██║╚████║██║░░██╗██╔══╝░░██║░░░░░ 
                            ██║░░░░░██║██║░╚███║╚█████╔╝███████╗███████╗  
                            ╚═╝░░╚═╝╚═╝╚═╝░░╚═╝╚══════╝╚═╝╚═╝░░╚══╝╚════

"""
print (nombre)

operaciones = """

Suma
Raiz cuadrada
Potencia
Valor absoluto

"""
print (operaciones)

import math
import random

def suma(a, b):
    if not (isinstance(a, (int, float)) and isinstance(b, (int, float))):
        raise ValueError("Solo se permiten valores numericos")
    return round(a + b, 2)

def raiz_cuadrada(a):
    if not (isinstance(a, (int, float))):
        raise ValueError("Solo se permiten valores numericos")
    return round(math.sqrt(a), 2)

def potencia(a, b):
    if not (isinstance(a, (int, float)) and isinstance(b, (int, float))):
        raise ValueError("Solo se permiten valores numericos")
    return round(a ** b, 2)

def valor_absoluto(a):
    if not (isinstance(a, (int, float))):
        raise ValueError("Solo se permiten valores numericos")
    return round(abs(a), 2)

def main():
    resultados = []
    while True:
        operation_options = {1: suma, 2: raiz_cuadrada, 3: potencia, 4: valor_absoluto}
        operation_number = random.randint(1, 4)
        operation = operation_options[operation_number]

        arguments = []
        if operation_number in (1, 3):
            arguments = [float(input("Ingrese el valor: ")) for _ in range(2)]
        elif operation_number in (2, 4):
            arguments = [float(input("Ingrese el valor: "))]

        resultado = operation(*arguments)
        resultados.append(resultado)
        print(f"Resultado: {resultado}")

        if random.randint(1, 4) == 3:
            break

    print("\nResultados:")
    for i, resultado in enumerate(resultados):
        print(f"Operacion {i + 1}: {resultado}")

if __name__ == "__main__":
    main()

