USE D_D_B_D_#_APELLIDO_2023

CREATE TABLE Comprobantes_de_Pago_26 (Codigos Char (3) not null, Talleres Varchar (25), Movil Numeric, Unidades Integer, Precios Float, Itbis Decimal (7,4), Montos Money, Actualidad Date)
 
Alter Table Comprobantes_de_Pago_26
Add Primary Key (Codigos)

set Dateformat 'dmy'
Insert Into Comprobantes_de_Pago_26 (Codigos, Talleres, Movil, Unidades, Precios, Itbis, Montos, Actualidad)
Values ('a-1' , 'Sin Hoyos' , 8093214560 , 10 , 125.75 , 226.35 , $1257.5 , '10-03-2023');

INSERT INTO Comprobantes_de_Pago_26 (Codigos, Talleres, Movil, Unidades, Precios, Itbis, Montos, Actualidad)
VALUES ('b-2', 'Luna Vieja', 8499874563 , 6 , 365.99 , 395.2692 , $2195.94 , '2023-03-11');

INSERT INTO Comprobantes_de_Pago_26 (Codigos, Talleres, Movil, Unidades, Precios, Itbis, Montos, Actualidad)
Values ('c-3' , 'Nadar se Aprende' , 8294102387 , 4 , 190.85 , 137.412 , $763.4 , '12-03-2023');

INSERT INTO Comprobantes_de_Pago_26 (Codigos, Talleres, Movil, Unidades, Precios, Itbis, Montos, Actualidad)
Values ('d-4' , 'Cintas Negras' , 8299634521 , 20 , 59.60 , 214.56 , $1192 , '13-03-2023');

INSERT INTO Comprobantes_de_Pago_26 (Codigos, Talleres, Movil, Unidades, Precios, Itbis, Montos, Actualidad)
Values ('e-5' , 'Manta Rayas' , 8295712564 , 3 , 399.99 , 215.9946 , $1199.97 , '10-03-2023');

INSERT INTO Comprobantes_de_Pago_26 (Codigos, Talleres, Movil, Unidades, Precios, Itbis, Montos, Actualidad)
Values ('f-6' , 'Las Mangulinas' , 8492115588 , 2 , 785.15 , 122.364 , $1570.3 , '10-03-2023');

INSERT INTO Comprobantes_de_Pago_26 (Codigos, Talleres, Movil, Unidades, Precios, Itbis, Montos, Actualidad)
Values ('g-7' , 'Buscando Sonidos' , 8096632121 , 8 , 235.50 , 339.12 , $1884 , '14-03-2023');

SELECT *
FROM Comprobantes_de_Pago_26

SELECT Talleres, Montos, Actualidad
FROM Comprobantes_de_Pago_26

SELECT Codigos, Unidades, Precios
FROM Comprobantes_de_Pago_26

SELECT Precios, Montos, Itbis
FROM Comprobantes_de_Pago_26

SELECT Codigos, Unidades, Movil
FROM Comprobantes_de_Pago_26









