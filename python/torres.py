import random

class Complejo:
    def __init__(self):
        self.torres = [[[random.randint(0, 5) for _ in range(4)] for _ in range(15)] for _ in range(3)]

    def main(self):
        print("\t\tCOMPLEJO DE APARTAMENTOS")
        print("-------------------------------------------------------------------\n")
        print("CANTIDAD DE HABITANTES DEL COMPLEJO\n")

        habitantes = [0] * 3

        for t in range(len(self.torres)):
            for p in range(len(self.torres[t])):
                for a in range(len(self.torres[t][p])):
                    habitantes[t] += self.torres[t][p][a]

        suma = sum(habitantes)

        print(f"La cantidad de habitantes de la torre 1 es: {habitantes[0]}")
        print(f"La cantidad de habitantes de la torre 2 es: {habitantes[1]}")
        print(f"La cantidad de habitantes de la torre 3 es: {habitantes[2]}\n")

        print(f"La cantidad de habitantes del complejo es: {suma}\n")
        print("-------------------------------------------------------------------\n")

        print("CANTIDAD PROMEDIO DE HABITANTES POR PISO DE CADA TORRE\n")

        for t in range(len(self.torres)):
            for p in range(len(self.torres[t])):
                promedio = sum(self.torres[t][p]) // len(self.torres[t][p])

                print(f"El promedio de habitantes del piso {p + 1} de la torre {t + 1} es: {promedio}")

        print("-------------------------------------------------------------------\n")
        print("CANTIDAD PROMEDIO DE HABITANTES POR TORRE\n")

        for i in range(len(habitantes)):
            promedio_torre = habitantes[i] // 15
            print(f"La cantidad promedio de habitantes de torre {i + 1} es: {promedio_torre}")

        print("\n-------------------------------------------------------------------\n")
        print("CANTIDAD DE APARTAMENTOS DISPONIBLES PARA ALQUILAR\n")

        for t in range(len(self.torres)):
            for p in range(len(self.torres[t])):
                for a in range(len(self.torres[t][p])):
                    if self.torres[t][p][a] == 0:
                        print(f"En la torre {t + 1}, piso {p + 1}, el departamento {a + 1} está disponible")

if __name__ == "__main__":
    complejo = Complejo()
    complejo.main()
