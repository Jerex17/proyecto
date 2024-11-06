nombre = """

             
                            ██████╗░██╗███╗░░██╗░█████╗░███████╗██╗░░░░░  ░█████╗░██╗██████╗░██╗░░░░░██╗███╗░░██╗███████╗░██████╗
                            ██╔══██╗██║████╗░██║██╔══██╗██╔════╝██║░░░░░  ██╔══██╗██║██╔══██╗██║░░░░░██║████╗░██║██╔════╝██╔════╝
                            ██████╔╝██║██╔██╗██║██║░░╚═╝█████╗░░██║░░░░░  ███████║██║██████╔╝██║░░░░░██║██╔██╗██║█████╗░░╚█████╗░
                            ██╔═══╝░██║██║╚████║██║░░██╗██╔══╝░░██║░░░░░  ██╔══██║██║██╔══██╗██║░░░░░██║██║╚████║██╔══╝░░░╚═══██╗
                            ██║░░░░░██║██║░╚███║╚█████╔╝███████╗███████╗  ██║░░██║██║██║░░██║███████╗██║██║░╚███║███████╗██████╔╝
                            ╚═╝░░░░░╚═╝╚═╝░░╚══╝░╚════╝░╚══════╝╚══════╝  ╚═╝░░╚═╝╚═╝╚═╝░░╚═╝╚══════╝╚═╝╚═╝░░╚══╝╚══════╝╚═════╝░


"""
print (nombre)

import datetime

fecha_hora_actual = datetime.datetime.now()
fecha_hora_formato = fecha_hora_actual.strftime("%d-%m-%y %H:%M:%S")

print(f"Bienvenido a su aerolínea {fecha_hora_formato}")
print("PINCEL TRAVEL")

asientos_disponibles = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"] 
asientos_reservados = set()

def mostrar_opciones_aeropuertos():
    print("Seleccione el destino deseado desde Aereopuerto internacional de las Americas Republica Dominicana:")
    aeropuertos_latinoamerica = [
        {"nombre": "Aeropuerto Internacional El Dorado", "ubicacion": "Bogotá, Colombia", "costo": 300},
        {"nombre": "Aeropuerto Internacional Benito Juárez", "ubicacion": "Ciudad de México, México", "costo": 400},
        {"nombre": "Aeropuerto Internacional Jorge Chávez", "ubicacion": "Lima, Perú", "costo": 350},
        {"nombre": "Aeropuerto Internacional Comodoro Arturo Merino Benítez", "ubicacion": "Santiago, Chile", "costo": 450},
        {"nombre": "Aeropuerto Internacional de Tocumen", "ubicacion": "Ciudad de Panamá, Panamá", "costo": 320},
        {"nombre": "Aeropuerto Internacional José Martí", "ubicacion": "La Habana, Cuba", "costo": 380},
        {"nombre": "Aeropuerto Internacional Ministro Pistarini", "ubicacion": "Buenos Aires, Argentina", "costo": 500},
        {"nombre": "Aeropuerto Internacional Simón Bolívar", "ubicacion": "Caracas, Venezuela", "costo": 420},
        {"nombre": "Aeropuerto Internacional Alfonso Bonilla Aragón", "ubicacion": "Cali, Colombia", "costo": 330},
        {"nombre": "Aeropuerto Internacional Juan Santamaría", "ubicacion": "San José, Costa Rica", "costo": 300},
        {"nombre": "Aeropuerto Internacional El Salvador", "ubicacion": "San Salvador, El Salvador", "costo": 310},
        {"nombre": "Aeropuerto Internacional José Joaquín de Olmedo", "ubicacion": "Guayaquil, Ecuador", "costo": 340},
        {"nombre": "Aeropuerto Internacional Augusto C. Sandino", "ubicacion": "Managua, Nicaragua", "costo": 370},
        {"nombre": "Aeropuerto Internacional La Aurora", "ubicacion": "Ciudad de Guatemala, Guatemala", "costo": 320},
        {"nombre": "Aeropuerto Internacional Capitán FAP Guillermo Concha Iberico", "ubicacion": "Piura, Perú", "costo": 350},
        {"nombre": "Aeropuerto Internacional Toussaint Louverture.", "ubicacion": "Puerto principe, Haiti", "costo": 75},
        {"nombre": "Aeropuerto Internacional de la Ciudad de México", "ubicacion": "Ciudad de México, México", "costo": 375},
        {"nombre": "Aeropuerto Internacional de São Paulo–Guarulhos", "ubicacion": "São Paulo, Brasil", "costo": 250},
        {"nombre": "Aeropuerto Internacional de Cancún", "ubicacion": "Cancún, México", "costo": 450},
        {"nombre": "Aeropuerto Internacional de São Paulo–Congonhas", "ubicacion": "São Paulo, Brasil", "costo": 300},
        {"nombre": "Aeropuerto Internacional Presidente Juscelino Kubitschek", "ubicacion": "Brasilia, Brasil", "costo": 305},
        {"nombre": "Aeropuerto Internacional de Río de Janeiro–Galeão", "ubicacion": "Río de Janeiro, Brasil", "costo": 415},
        {"nombre": "Aeropuerto Internacional de Tocumen", "ubicacion": "Ciudad de Panamá, Panamá", "costo": 340}
        
    ]

    for i, aeropuerto in enumerate(aeropuertos_latinoamerica):
        print(f"{i+1}. {aeropuerto['nombre']} ({aeropuerto['ubicacion']}), Costo: ${aeropuerto['costo']}")

    return aeropuertos_latinoamerica

import re

def validar_numero_telefono(telefono):
   
    patron_telefono = re.compile(r'^\d{3}-\d{3}-\d{4}$')
    return bool(patron_telefono.match(telefono))

def validar_correo_electronico(correo):
  
    patron_correo = re.compile(r'@gmail\.com$')
    return bool(patron_correo.search(correo))

def obtener_datos_persona(identificador):
    nombre = input(f"Ingrese el nombre de la persona {identificador}: ")
    apellido = input(f"Ingrese el apellido de la persona {identificador}: ")
    edad = int(input(f"Ingrese la edad de la persona {identificador}: "))

    if identificador == "menor":
        while edad >= 18:
            print("La edad del menor debe ser menor a 18 años.")
            edad = int(input(f"Ingrese la edad del menor: "))
    else:
        while edad < 18:
            print("La persona debe tener al menos 18 años para viajar sola.")
            edad = int(input(f"Ingrese la edad de la persona {identificador}: "))

    telefono = input(f"Ingrese el número de teléfono de la persona {identificador} (formato 000-000-0000): ")
    while not validar_numero_telefono(telefono):
        print("Número de teléfono no válido. El formato debe ser 000-000-0000.")
        telefono = input(f"Ingrese el número de teléfono de la persona {identificador} (formato 000-000-0000): ")

    correo = input(f"Ingrese el correo electrónico de la persona {identificador} (debe ser @gmail.com): ")
    while not validar_correo_electronico(correo):
        print("Correo electrónico no válido. Debe ser una dirección de correo de Gmail.")
        correo = input(f"Ingrese el correo electrónico de la persona {identificador} (debe ser @gmail.com): ")

    return {
        "nombre": nombre,
        "apellido": apellido,
        "edad": edad,
        "telefono": telefono,
        "correo": correo
    }

def comprar_vuelo():
    global asientos_reservados 

    print("Bienvenido a venta de vuelos pincel airlines")
    print("Que tipo de vuelo deseas?")
    print("1-Ida", end=" ")
    print("2-Ida y Vuelta")
    
    opcion = input("Ingrese el número de la opción deseada (1 o 2): ")

    if opcion == "1" or opcion == "2":
        aeropuertos = mostrar_opciones_aeropuertos()
        destino = int(input("Ingrese el número correspondiente al destino deseado: "))
        destino_elegido = aeropuertos[destino - 1]
        
        print(f"Ha seleccionado el destino:")
        print(f"Nombre: {destino_elegido['nombre']}")
        print(f"Ubicación: {destino_elegido['ubicacion']}")
        print(f"Costo: ${destino_elegido['costo']}")
        num_personas = int(input("Ingrese cuántas personas viajarán: "))

        if opcion == "1":
            total_costo = destino_elegido['costo'] * num_personas
        elif opcion == "2":
         
            total_costo = 2 * destino_elegido['costo'] * num_personas

        maleta_extra_costo = 60

        for i in range(num_personas):
            llevar_maleta_extra = input(f"¿La persona {i+1} llevará una maleta extra? *AVISO PRECIO* $60usd (S/N): ")
            if llevar_maleta_extra.lower() == "s":
                total_costo += maleta_extra_costo

            print("Asientos disponibles: ", asientos_disponibles)
            asiento = input(f"Ingrese el número de asiento para la persona {i+1}: ").upper()

            while asiento not in asientos_disponibles or asiento in asientos_reservados:
                print("Este asiento no está disponible o ya está reservado. Por favor, elija otro.")
                print("Asientos disponibles: ", asientos_disponibles)
                asiento = input(f"Ingrese el número de asiento para la persona {i+1}: ").upper()

            asientos_reservados.add(asiento)
            asientos_disponibles.remove(asiento)
            print(f"Asiento {asiento} reservado para la persona {i+1}.")

            if i + 1 < num_personas:
                datos_persona = obtener_datos_persona(i+1)
                print(f"Datos de la persona {i+1}: {datos_persona}")
            else:
                datos_persona = obtener_datos_persona(1)
                print(f"Datos de la persona {i+1}: {datos_persona}")

        print(f"El costo total del vuelo para {num_personas} personas es: ${total_costo}")

    else:
        print("Opción no válida. Por favor, ingrese 1 o 2.")

    viajar_con_menor = input("¿Viajará con un menor de edad? (S/N): ")
    if viajar_con_menor.lower() == "s":
        print("Por favor, complete el siguiente formulario con los datos del menor:")
        datos_menor = obtener_datos_persona("menor")
        print(f"Datos del menor: {datos_menor}")
    

comprar_vuelo()






