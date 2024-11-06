import pprint

frutas = ["mango", "guayaba", "tamarindo"] 
frutasinvertidas = frutas[0:3:1]
print(frutasinvertidas)

pprint.pprint("**************************")

lvalores = [1,2,3,4,5,6,7,8,9,10]
vcortados = lvalores[1:10:2]
print(vcortados)

lvalores = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
vcortados2 = lvalores[1:20:2]
print(vcortados2)



pprint.pprint("**************************")

cadena="Chucho fundita,57,colombia"
nombre = cadena[0:14]
edad = cadena[15:17]
pais = cadena[18:26]

print(nombre, 'de', edad, 'viajara a', pais, 'con su esposa')


