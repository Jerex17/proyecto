def estacion_del_año(mes):
   mes = mes.lower()

   if mes in ('enero', 'febrero', 'marzo'):
       return 'Estamos en primavera'
   elif mes in ('abril', 'mayo', 'junio'):
       return 'Estamos en verano'
   elif mes in ('julio', 'agosto', 'septiembre'):
       return 'Estamos en otoño'
   elif mes in ('octubre', 'noviembre', 'diciembre'):
       return 'Estamos en invierno'
   else:
       return 'Mes no válido'


def programa_principal():
   while True:
       mes_ingresado = input("Ingresa un mes: ")
       resultado = estacion_del_año(mes_ingresado)
       print(resultado)

       salir = input("¿Deseas salir del programa? (S/N): ").lower()
       if salir == 's':
           break


programa_principal()
