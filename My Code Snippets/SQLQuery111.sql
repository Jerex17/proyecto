
USE D_D_B_D_#_5toE_2023
CREATE TABLE  Garaje26_15_05_23 (Entradas26 int identity(50,25),
Vehiculos26 VARCHAR (15) not null,
Usuarios26 VARCHAR (30)  not null  default 'Oso Yogui',
Rotulos26  VARCHAR (30) null,
Horas26 numeric null,
Fechas26 DATE null,
Precio_H26 numeric null,
Saldos26 numeric null
Primary key (Entradas26));

SET DATEFORMAT 'MDY'
INSERT INTO Garaje26_15_05_23
VALUES('M' , 'Carlos Geronimo' , 'K-256890' , 5 , '05-13-2023' , 50 , 0);

Set identity_insert Garaje26_15_05_23 on;
SET DATEFORMAT 'DMY'
INSERT INTO Garaje26_15_05_23(Entradas26,Vehiculos26,Usuarios26,Rotulos26,Horas26,Fechas26,
Precio_H26,Saldos26)
VALUES(26 , 'C' , 'Ana Perez' , 'L-223456' , 20 , '15-05-2023' , 200 , 4000);
INSERT INTO Garaje26_15_05_23(Entradas26,Vehiculos26,Usuarios26,Rotulos26,Horas26,Fechas26,
Precio_H26,Saldos26)
VALUES(36 , 'A' , 'Iris Hernandez' , 'A-987654' , 10 , '17-05-2023' , 100 , 1000)
SET DATEFORMAT 'MDY'
INSERT INTO Garaje26_15_05_23(Entradas26,Vehiculos26,Usuarios26,Rotulos26,Horas26,Fechas26,
Precio_H26,Saldos26)
VALUES(46 , 'P' , 'Miguel Castro' , 'P-087342' , 0 , '05-18-2023' , 150 , 300)
Set identity_insert Garaje26_15_05_23 off;

INSERT INTO Garaje26_15_05_23
VALUES('B' , 'Fausto Diaz' , 'B-664431' , 6 , Null , 125 , 750);
INSERT INTO Garaje26_15_05_23
VALUES('D' , '' , Null , 4 , '04-19-2023' , 150 , Null);
INSERT INTO Garaje26_15_05_23
VALUES('' , 'Juana Valdez' , '' , 0 , '' , Null , 500);
SET DATEFORMAT 'DMY'
INSERT INTO Garaje26_15_05_23
VALUES('I' , default , 'I-881084' , '15' , '30-04-2023' , 175 , 2625);
SET DATEFORMAT 'MDY'
INSERT INTO Garaje26_15_05_23
VALUES('G' , 'Alfredo B�ez' , 'G-005539' , 24 , '01-05-2023' , 125 , 3000);
INSERT INTO Garaje26_15_05_23
VALUES('X' , 'Manuel Nuñez' , 'X-001123' , 36 , '02-05-2023' , 100 , 3600);

Select * From Garaje26_15_05_23;
sp_columns Garaje26_15_05_23;
Select ident_seed ('Garaje26_15_05_23');
Select ident_incr ('Garaje26_15_05_23');
Select sum (Saldos26) From Garaje26_15_05_23;
Select Entradas26, Vehiculos26, Saldos26-(Saldos26*0.15) From Garaje26_15_05_23;
Update Garaje26_15_05_23 Set Precio_H26=Precio_H26-(Precio_H26*0.20);
Select * From Garaje26_15_05_23;
Select Vehiculos26 From Garaje26_15_05_23 where Saldos26=0;
Select Vehiculos26, Entradas26, Rotulos26, Usuarios26 From Garaje26_15_05_23;
Select (Precio_H26 * Horas26) as 'menos la cantidad de horas' FROM Garaje26_15_05_23;
Select Precio_H26 as 'Precios por horas', Entradas26 as 'Salidas26', Usuarios26 as 'Nombres26'
From Garaje26_15_05_23;
Select Vehiculos26, Saldos26-(Saldos26*0.15) AS
'Descuento:' From Garaje26_15_05_23;
Select  Vehiculos26 as 'Cero Pago' From Garaje26_15_05_23 where Saldos26=0;
Select (Precio_H26*Horas26) as 'menos la Cantidad de Horas' FROM Garaje26_15_05_23
Select*From Garaje26_15_05_23 order by Vehiculos26;
Select*From Garaje26_15_05_23 order by Fechas26 ASC
Select*From Garaje26_15_05_23 order by Horas26 ASC;
Select*From Garaje26_15_05_23 order by Rotulos26, Vehiculos26;
Select*From Garaje26_15_05_23 order by Vehiculos26 asc, Horas26 desc;
Select Usuarios26, Rotulos26 from Garaje26_15_05_23 order by Saldos26;
Select Vehiculos26, Usuarios26, Precio_H26, Rotulos26, Precio_H26-(Precio_H26-0.30) as
'30% descontado' from Garaje26_15_05_23 order by 3;