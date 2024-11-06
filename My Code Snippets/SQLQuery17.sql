Use D_D_B_D_#_APELLIDO_2023

Go

Create Table Ejemplares_26_22_05_23 (Asientos26 int identity (30,30), Obras_Literarias varchar(90) not null, Escritor_26 varchar(80) not null default 'Cristobal Colon', 
Libreros26 varchar(70) null, Costos_26 decimal(7,2) null, Numeros26 numeric null, Fechas26 datetime null, primary key(Asientos26));

Set dateformat 'mdy';

Insert into Ejemplares_26_22_05_23
Values('El corazón de la piedra' , 'José María García López' , 'Nocturna' , 2525.25 , null , '05-18-2001');
Insert into Ejemplares_26_22_05_23
Values('Salmos de vísperas' , 'Esteban Hernández Castelló' , 'Obra social de Caja de Avila' , 3250.50 , 19 , '05-27-1999');

Set identity_insert Ejemplares_26_22_05_23 on;
Set dateformat 'dmy';

Insert into Ejemplares_26_22_05_23(Asientos26, Obras_Literarias, Escritor_26, Libreros26, Costos_26, Numeros26, Fechas26)
Values(203, 'La música en las catedrales españolas del Siglo de Oro' , 'Robert Stevenson' , 'Alianza Música' , null , 15 , '31-03-2010');
Insert into Ejemplares_26_22_05_23(Asientos26, Obras_Literarias, Escritor_26, Libreros26, Costos_26, Numeros26, Fechas26)
Values(205 , 'Tomás Luis de Victoria' , default , '' , 1875.25 , null , '20-07-2004');

Set dateformat 'mdy';

Insert into Ejemplares_26_22_05_23(Asientos26, Obras_Literarias, Escritor_26, Libreros26, Costos_26, Numeros26, Fechas26)
Values(207 , 'Studies in the Music' , 'Eugene Casjen Cramer' , 'Ashgate' , null , 30 , '09-26-2015');
Insert into Ejemplares_26_22_05_23(Asientos26, Obras_Literarias, Escritor_26, Libreros26, Costos_26, Numeros26, Fechas26)
Values(209 ,'La polifonía clásica' , 'Samuel Rubio' , 'la ciudad de Dios' , 4199.95,20 , '11-19-2017');

Set identity_insert Ejemplares_26_22_05_23 off;

Set dateformat 'dmy';

Insert into Ejemplares_26_22_05_23
Values('Transcripción e interpretación Española de los siglos XV y XVI' , default , 'Planeta' , 6500 , 10 , '12-04-1989');
Insert into Ejemplares_26_22_05_23
Values ('Historia de la música española 2' , 'Samuel Rubio' , 'Alianza Música' , 2649.99 , 22 , '31-01-2017');


Select *from Ejemplares_26_22_05_23;
sp_columns Ejemplares_26_22_05_23;
Select ident_seed('Ejemplares_26_22_05_23');
Select ident_incr ('Ejemplares_26_22_05_23');
Select count(*)from Ejemplares_26_22_05_23;
Select count (Libreros26) from Ejemplares_26_22_05_23;
Select count(Costos_26) as 'Con precio26', count (Numeros26) as 'Con cantidad88' from Ejemplares_26_22_05_23;
Select count(Costos_26) from Ejemplares_26_22_05_23 where Obras_Literarias like 'T%';
select count(Escritor_26) from Ejemplares_26_22_05_23 where Numeros26 <> null;
Select sum (Numeros26) AS Total_de_Numeros from Ejemplares_26_22_05_23;
Select sum (Numeros26) AS Total_DE_ALIANZA from Ejemplares_26_22_05_23 where Libreros26='Alianza Música';
Select max (Costos_26) AS Precio_mas_Alto from Ejemplares_26_22_05_23;
Select min (Costos_26) As 'Costo Minimo de Cristobal Colon' from Ejemplares_26_22_05_23 where Escritor_26 like 'Cristobal Colon';
Select avg (Costos_26) AS Promedio_Precio from Ejemplares_26_22_05_23 where Obras_Literarias like '%La polifonía clásica%';
Select count(*) AS Total_de_Registros from Ejemplares_26_22_05_23;
Select count (Costos_26) AS 'Registros con Precio' from Ejemplares_26_22_05_23;
Select Fechas26, count(*) as Cantidad_26 from Ejemplares_26_22_05_23 group by Fechas26;
Select Obras_Literarias, count (*) as Menor_de_20 from Ejemplares_26_22_05_23 where Numeros26 < 20 group by Obras_Literarias;
Select Asientos26, max(Numeros26) AS Mayor, min(Costos_26) AS Menor from Ejemplares_26_22_05_23 group by Asientos26;
Select Escritor_26, count(*) As Todos from Ejemplares_26_22_05_23 where Costos_26>3000.00 group by all Escritor_26