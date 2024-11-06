USE D_D_B_D_#_APELLIDO_2023
GO
CREATE TABLE Cinematografía_26_02_05_23 (Orden26 integer Identity not null, Teatro26 varchar (75) not null, 
Filmes26 varchar (80) null, Interpretes26 varchar (95) null, Horas26 char (12) not null, Fechas26 date null, Entrada_P_26 float null, primary key(Orden26));

SET DATEFORMAT 'MDY'
Set identity_insert Cinematografía_26_02_05_23 on;
INSERT INTO Cinematografía_26_02_05_23(Orden26, Teatro26, Filmes26, Interpretes26, Horas26, Fechas26, Entrada_P_26)
VALUES (500 ,'Coral Mall','','Vin Diesel, Michelle Rodriguez','7:30 pm' , null,200);

INSERT INTO Cinematografía_26_02_05_23(Orden26, Teatro26, Filmes26, Interpretes26, Horas26, Fechas26, Entrada_P_26)
VALUES (600,'Hollywood Island Cinemas','The War with Grandpa','Robert De Niro, Uma Thurman','7:45 pm','05-05-23',0);

Set identity_insert Cinematografía_26_02_05_23 off;

INSERT INTO Cinematografía_26_02_05_23
VALUES ('Acrópolis Center','Jungle Cruise', null,'7:15 pm','05-23-23', 350);

INSERT INTO Cinematografía_26_02_05_23
VALUES ('Palacio del Cine Agora','Kings Man','Ralph Fiennes, Harris Dickinson','4:15 pm','', 0);

Set identity_insert Cinematografía_26_02_05_23 on;

INSERT INTO Cinematografía_26_02_05_23(Orden26, Teatro26, Filmes26, Interpretes26, Horas26, Fechas26, Entrada_P_26)
VALUES (700, 'Cinemacentro Malecón',null,'Bob Odenkirk, Connie Nielsen','5:25 pm','03-05-23','');

set dateformat 'mdy'
INSERT INTO Cinematografía_26_02_05_23(Orden26, Teatro26, Filmes26, Interpretes26, Horas26, Fechas26, Entrada_P_26)
VALUES (800, 'Hollywood Diamond','From the Book of Saw','Chris Rock y Samuel Jackson','6:15 pm','05-02-23', null);

Set identity_insert Cinematografía_26_02_05_23 off;

set dateformat 'dmy'
INSERT INTO Cinematografía_26_02_05_23
VALUES ('Caribbean Galería 360','Spirit of the Amazon','','6:10 pm','04-05-23', 450);

Select * from Cinematografía_26_02_05_23;
SELECT * from Cinematografía_26_02_05_23 WHERE Interpretes26 is null;
SELECT * from Cinematografía_26_02_05_23 WHERE Filmes26='';
SELECT * from Cinematografía_26_02_05_23 WHERE Entrada_P_26=0;
Select * from Cinematografía_26_02_05_23 where Fechas26 is not null;
UPDATE Cinematografía_26_02_05_23 SET Teatro26='Se fue la luz' WHERE Teatro26='Acrópolis Center';
Select *from Cinematografía_26_02_05_23;
UPDATE Cinematografía_26_02_05_23 SET Fechas26='18-05-23' WHERE Fechas26<>'05-05-23';
Select *from Cinematografía_26_02_05_23;
UPDATE Cinematografía_26_02_05_23 SET Entrada_P_26=550 WHERE Entrada_P_26<=0;
Select *from Cinematografía_26_02_05_23;
UPDATE Cinematografía_26_02_05_23 SET Interpretes26='Caperucita y el Lobo' WHERE Interpretes26='Chris Rock y Samuel Jackson';
Select *from Cinematografía_26_02_05_23;
UPDATE Cinematografía_26_02_05_23 SET Filmes26='Fondo Negro' WHERE Filmes26<='3:00 pm';
Select *from Cinematografía_26_02_05_23;
