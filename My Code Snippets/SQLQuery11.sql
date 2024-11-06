USE D_D_B_D_#_APELLIDO_2023
GO
CREATE TABLE Comedores_17_04_2023(Orden_26 numeric not null, Menus_26 varchar (40), Cantidad_26 int, Capacidad_26 varchar (15), Precios_26 float,
Saldos_26 money, Modo_Saldo_26 varchar (15), primary key(Orden_26));

INSERT INTO Comedores_17_04_2023
Values ('0' , 'Plato del día' , 4 , 'Grande' , 200.00 , $800.00 , 'Efectivo');

INSERT INTO Comedores_17_04_2023
Values (101 , 'Pica Pollo' , 2 , 'Mediano' , 190.00 , $380.00 , 'Tarjeta Debito');

INSERT INTO Comedores_17_04_2023
Values (102 , 'Moro con Pecado frito y Rusa' , 10 , 'Grande' , 325.00 , $3250.00 , 'Tarjeta Credito');

INSERT INTO Comedores_17_04_2023
Values (103 , 'Jugo de Mango' , 15 , 'Pequeño' , 20.00 , $300.00 , 'Efectivo');

INSERT INTO Comedores_17_04_2023
Values (104 , 'Jugo' , 1 , 'Mediano' , 35.00 , $35.00 , 'Efectivo');

INSERT INTO Comedores_17_04_2023
Values (105 , 'Ensalada de Marisco' , 7 , 'Pequeño' , 135.00 , $945.00 , 'Tarjeta Credito');

INSERT INTO Comedores_17_04_2023
Values (106 , 'Espagueti con frito' , 3 , 'Mediano' , 100.00 , $300.00 , 'Tarjeta Credito');

INSERT INTO Comedores_17_04_2023
Values (107 , 'Refresco' , 20 , '12OZ' , 20.00 , $400.00 , 'Tarjeta Debito');

INSERT INTO Comedores_17_04_2023
Values (108 , 'Chicharrón con Yuca' , 2 , '32OZ' , 485.00 , $970.00 , 'Efectivo');

INSERT INTO Comedores_17_04_2023
VALUES (109 , 'Pica Pollo' , 6 , 'Grande' , 325.00 , $1950.00 , 'Efectivo');

SELECT * FROM Comedores_17_04_2023
SELECT * FROM Comedores_17_04_2023 WHERE Modo_Saldo_26='Efectivo'
SELECT * FROM Comedores_17_04_2023 WHERE Saldos_26='300'
SELECT * FROM Comedores_17_04_2023 WHERE Menus_26='Pica Pollo'
SELECT Orden_26,Menus_26,Capacidad_26 FROM Comedores_17_04_2023 WHERE Cantidad_26='2'
SELECT Cantidad_26,Precios_26,Saldos_26 FROM Comedores_17_04_2023 WHERE Orden_26='102'
SELECT * FROM Comedores_17_04_2023 WHERE Capacidad_26='Mediano'
SELECT Menus_26, Saldos_26, Modo_Saldo_26 FROM Comedores_17_04_2023 WHERE Precios_26='325'
SELECT Cantidad_26,Precios_26 FROM Comedores_17_04_2023 WHERE Modo_Saldo_26='Tarjeta Credito' 
