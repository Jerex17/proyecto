while True:
    print("Introduce un numero para saber el mes del año (ingresa 0 para salir)")
    numero = input()

    if numero == "0":
        print("Saliendo del programa. ¡Hasta luego!")
        break

    if numero in {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"}:
        if numero == "1":
            print("Enero")
        elif numero == "2":
            print("Febrero")
        elif numero == "3":
            print("Marzo")
        elif numero == "4":
            print("Abril")
        elif numero == "5":
            print("Mayo")
        elif numero == "6":
            print("Junio")
        elif numero == "7":
            print("Julio")
        elif numero == "8":
            print("Agosto")
        elif numero == "9":
            print("Septiembre")
        elif numero == "10":
            print("Octubre")
        elif numero == "11":
            print("Noviembre")
        elif numero == "12":
            print("Diciembre")
        
       
        respuesta = input("¿Deseas continuar? (s/n): ")
        if respuesta.lower() != "s":
            print("Saliendo del programa. ¡Hasta luego!")
            break
    else:
        print("Número del mes no existente. Ingresa un número del 1 al 12.")

