Use D_D_B_D_#_APELLIDO_2023

Go

Create table Cancioneros26_12_05_23 (Fichas26 int Identity(200,5), Canción26 varchar(65) not null,
Cantautor26 varchar (55) not null default 'Trompo Loco', Cantidad26 int null, Ventas26 numeric null, Fechas26 datetime null,
Precios26 Decimal (6,2) null, primary key(Fichas26));


Set dateformat 'dmy';
Insert into Cancioneros26_12_05_23
values('La chiva Blanca', default , 20 , 12 ,'18/12/2022', 500.50);
Insert into Cancioneros26_12_05_23
values('La Z' , 'Anthony Rios' , 100 , 6 ,'15/01/2023' , 750);
Set dateformat 'mdy';
Insert into Cancioneros26_12_05_23
values('Como una loba' , 'Milagros Hernandez' , 30 , 15 ,'2/27/2023', 425);
Insert into Cancioneros26_12_05_23
values('Criminal' , 'Natti Natasha y Ozuna ' , 213 , 185 ,'3/29/2023' , 1000);

Set identity_insert Cancioneros26_12_05_23 on;

Insert into Cancioneros26_12_05_23 (Fichas26, Canción26,
Cantautor26, Cantidad26, Ventas26, Fechas26, Precios26)
Values (230, 'La Mujer Que A Mi Me Gusta ' , 'Wason Brazoban' , 0 , Null , Null , 380);

Set dateformat 'dmy';

Insert into Cancioneros26_12_05_23 (Fichas26, Canción26,
Cantautor26, Cantidad26, Ventas26, Fechas26, Precios26)
Values (240 , '‘' , default , 35 ,  0 , '17-03-2023' , 233);

Set dateformat 'mdy';
Insert into Cancioneros26_12_05_23 (Fichas26, Canción26,
Cantautor26, Cantidad26, Ventas26, Fechas26, Precios26)
Values (250, 'Tu, El y Yo' , 'Yoskar Sarante Bachata' , 0 , 24 , '05-13-2023' , 0);

Set identity_insert Cancioneros26_12_05_23 off;


Set dateformat 'dmy';
Insert into Cancioneros26_12_05_23
values('Da Ba Dee' , 'Eiffel 65' , 150 , 115 ,'21/04/2023' , 925);



Select *from Cancioneros26_12_05_23;
sp_columns Cancioneros26_12_05_23;
Select ident_seed('Cancioneros88_12_05_23');
Select ident_incr('Cancioneros88_12_05_23');
Select Canción26, Ventas26, Precios26, Precios26*Ventas26 from Cancioneros26_12_05_23;
Select Fichas26, Canción26, Precios26, Precios26-(Precios26*0.25) from Cancioneros26_12_05_23;
Update Cancioneros26_12_05_23 Set Precios26=Precios26-(Precios26*0.40);
Select *from Cancioneros26_12_05_23;
Select Canción26, Cantautor26, Cantidad26, Ventas26, Cantidad26-Ventas26 from Cancioneros26_12_05_23;
Select Canción26+'-', +Cantautor26+'-' , +Fichas26+'-' from Cancioneros26_12_05_23;
Select Fichas26 AS Fichas_de_Canciones, Cantautor26 AS Cantantes,
Canción26 AS Canciones from Cancioneros26_12_05_23;
Select Canción26, Ventas26, Precios26, Precios26*Ventas26 AS Monto_Total from Cancioneros26_12_05_23;
Select Fichas26, Canción26, Precios26, Precios26-(Precios26*0.25) As Precios_Menos_Descuentos from Cancioneros26_12_05_23;
Select Canción26, Cantautor26, Cantidad26, Ventas26, Cantidad26-Ventas26 AS Restantes
from Cancioneros26_12_05_23;
Select *from Cancioneros26_12_05_23 order by Cantautor26;
Select Canción26, Cantidad26, Fechas26, Precios26 from Cancioneros26_12_05_23 order by 4;
Select *from Cancioneros26_12_05_23 order by Cantautor26 desc;
Select *from Cancioneros26_12_05_23 order by Ventas26, Fichas26;
Select *from Cancioneros26_12_05_23 order by Cantidad26 asc, Canción26 desc;
Select Fechas26, Fichas26 from Cancioneros26_12_05_23 order by Precios26;
Select Canción26, Cantautor26, Precios26, Ventas26, Precios26-(Precios26*0.50) as '50% descontado'
from Cancioneros26_12_05_23 order by 3;