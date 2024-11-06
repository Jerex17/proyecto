Use D_D_B_D_#_Apellido_2023
Go
Create Table Recibos_de_Pago_26_17_04 (Códigos numeric, Talleres_26 varchar (40),
Móvil_26 char (12) not null, Unidades_26 integer, Precios_26 float, Itbis_26 decimal (8,4), Montos_26 money, Actualidad_26 date, primary key(Móvil_26));

SET DATEFORMAT 'DMY'
INSERT INTO Recibos_de_Pago_26_17_04
VALUES (11111 , 'Sin Hoyos' , '809-321-4560' , 10 , 125.75 , 226.35 , $1257.5 ,'17-04-2023');

INSERT INTO Recibos_de_Pago_26_17_04
VALUES (10002 , 'Luna Vieja' , '849-987-4563' , 6 , 365.99 , 395.2692 , $2195.94 , '17-04-2023');

INSERT INTO Recibos_de_Pago_26_17_04
VALUES (22222 , 'Nadar se Aprende' , '829-410-2387', 4, 190.85, 137.412, $763.4, '20-04-2023');

INSERT INTO Recibos_de_Pago_26_17_04
VALUES (20003 , 'Cintas Negras' , '829-963-4521' , 20 , 59.60 , 214.56 , $1192 , '20-04-2023');

INSERT INTO Recibos_de_Pago_26_17_04
VALUES (33333 , 'Manta Rayas' , '829-571-2564' , 3 , 399.99 , 219.9946 , $1199.97 , '21-04-2023');

INSERT INTO Recibos_de_Pago_26_17_04
VALUES (30004 , 'Las Mangulinas' , '849-211-5588' , 2 , 785.15 , 1223.64 , $1570.30, '21-04-2023');

INSERT INTO Recibos_de_Pago_26_17_04
VALUES (44444 , 'Buscando Sonidos' , '809-663-2121' , 8 , 235.50 , 339.12 , $1884 , '21-04-2023');


Select * from Recibos_de_Pago_26_17_04;
Select * from Recibos_de_Pago_26_17_04 where Montos_26<=$1500.00;
Select Actualidad_26, Precios_26, Talleres_26 from Recibos_de_Pago_26_17_04 where Códigos>22222;
Select * from Recibos_de_Pago_26_17_04 where Talleres_26 <>'Nadar se Aprende';
Select Unidades_26, Itbis_26, Montos_26 from Recibos_de_Pago_26_17_04 where Unidades_26>=8;
Delete from Recibos_de_Pago_26_17_04 where Actualidad_26='20-04-2023';
Select * from Recibos_de_Pago_26_17_04;
Delete from Recibos_de_Pago_26_17_04 where Unidades_26>=10;
Select * from Recibos_de_Pago_26_17_04;
Delete from Recibos_de_Pago_26_17_04 where Móvil_26<>'849-211-5588';
Select * from Recibos_de_Pago_26_17_04;
Delete from Recibos_de_Pago_26_17_04;
Select * from Recibos_de_Pago_26_17_04;