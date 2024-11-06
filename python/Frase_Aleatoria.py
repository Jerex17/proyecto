while True:
    letra = input("Ingresa una letra (ingresa 0 para salir): ")

    if letra == "0":
        print("Saliendo del programa. ¡Hasta luego!")
        break  

    if letra.isalpha() and len(letra) == 1:
        letra = letra.upper()  

        frases = {
            'A': 'A es para Avión, que vuela alto en el cielo.',
            'B': 'B es para Ballena, majestuosa en el océano.',
            'C': 'C es para Cataratas, un espectáculo de la naturaleza.',
            'D': 'D es para Delfín, inteligente y juguetón.',
            'E': 'E es para Elefante, el gigante de la selva.',
            'F': 'F es para Flor, hermosa y colorida.',
            'G': 'G es para Girasol, sigue la luz del sol.',
            'H': 'H es para Helado, un dulce placer.',
            'I': 'I es para Isla, rodeada de aguas cristalinas.',
            'J': 'J es para Jirafa, con su largo cuello.',
            'K': 'K es para Koala, un tierno habitante de los árboles.',
            'L': 'L es para León, el rey de la selva.',
            'M': 'M es para Mariposa, delicada y colorida.',
            'N': 'N es para Nube, flotando en el cielo.',
            'O': 'O es para Orquídea, una flor exquisita.',
            'P': 'P es para Pingüino, hábil nadador en el hielo.',
            'Q': 'Q es para Quetzal, ave colorida y simbólica.',
            'R': 'R es para Río, flujo constante de agua.',
            'S': 'S es para Sol, fuente de luz y calor.',
            'T': 'T es para Tortuga, lenta pero resistente.',
            'U': 'U es para Unicornio, mágico y fantástico.',
            'V': 'V es para Volcán, poderosa fuerza de la naturaleza.',
            'W': 'W es para Waffles, deliciosos para el desayuno.',
            'X': 'X es para Xilófono, instrumento musical.',
            'Y': 'Y es para Yate, navegando en aguas tranquilas.',
            'Z': 'Z es para Zorro, astuto y juguetón.',
        }

        if letra in frases:
            frase = frases[letra]
            print(frase)
        else:
            print(f"No hay una frase asignada para la letra {letra}.")

        continuar = input("¿Quieres continuar? (S/N): ")
        if continuar.upper() != 'S':
            print("Saliendo del programa. ¡Hasta luego!")
            break

    else:
        print("Por favor, ingresa una única letra válida o 0 para salir.")
