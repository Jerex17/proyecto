USE D_D_B_D_#_APELLIDO_2023
GO
CREATE TABLE Sección_26_08_05_23 (Códigos26 Numeric Identity, Días26 varchar (10), 
Horario26 Numeric, Materias26 varchar (15), Educadores26 varchar (30), Fechas_Inicio26 DATE,
Primary key(Códigos26));

SET IDENTITY_INSERT Sección_26_08_05_23 on;
SET DATEFORMAT 'DMY'
INSERT INTO Sección_26_08_05_23 (Códigos26, Días26, 
Horario26, Materias26, Educadores26, Fechas_Inicio26)
VALUES(750 , 'Lunes' , 0 , 'Marketing' , 'Julio Romero' , '17-05-23');
SET DATEFORMAT 'MDY'
INSERT INTO Sección_26_08_05_23 (Códigos26, Días26, 
Horario26, Materias26, Educadores26, Fechas_Inicio26)
VALUES(775 , null , 13 , 'Costo' , 'Elimer Aquino' , '05-22-23');
INSERT INTO Sección_26_08_05_23 (Códigos26, Días26, 
Horario26, Materias26, Educadores26, Fechas_Inicio26)
VALUES(800 , 'Miércoles' , 0 , 'Proyecto' , 'Lisse Toira' , '05-30-23');
SET IDENTITY_INSERT Sección_26_08_05_23 off;

INSERT INTO Sección_26_08_05_23
VALUES('Jueves' , 11 , 'Circuitos' , 'Pedro Perdomo' , '' );
INSERT INTO Sección_26_08_05_23
VALUES('Viernes' , 17 , 'Fotografía' , 'Carmen Solano' , null);
SET DATEFORMAT 'DMY'
INSERT INTO Sección_26_08_05_23
VALUES('Sábados' , 15 , 'Diseño' , null , '13-05-23');

SET IDENTITY_INSERT Sección_26_08_05_23 on;
SET DATEFORMAT 'MDY'
INSERT INTO Sección_26_08_05_23 (Códigos26, Días26, 
Horario26, Materias26, Educadores26, Fechas_Inicio26)
values(825 , 'Domingo' , 9 , 'Gestión R. H' , 'Brígida Mañón' , '04-30-23');
INSERT INTO Sección_26_08_05_23 (Códigos26, Días26, 
Horario26, Materias26, Educadores26, Fechas_Inicio26)
VALUES(850 , '' , 20 , 'Comercio' , 'Antonio Volquez' , '06-28-23');
SET IDENTITY_INSERT Sección_26_08_05_23 off;

INSERT INTO Sección_26_08_05_23
VALUES('Martes' , 19 , 'Electrónica' , 'Martha Beato' , '05-25-23');
SET DATEFORMAT 'DMY'
INSERT INTO Sección_26_08_05_23
VALUES('Miércoles' , null , 'Operativa II' , 'Rolando Zaglul' , '21-05-23')

SELECT * FROM Sección_26_08_05_23
sp_columns Sección_26_08_05_23
Select * from Sección_26_08_05_23 WHERE Educadores26 is null;
select * from Sección_26_08_05_23 WHERE Fechas_Inicio26='';
select * from Sección_26_08_05_23 WHERE Días26 IS not null;
UPDATE Sección_26_08_05_23 SET Materias26='Camino al Baile'
WHERE Materias26='Marketing'
select * from Sección_26_08_05_23
UPDATE Sección_26_08_05_23 SET Horario26=30
WHERE Horario26<=11
select * from Sección_26_08_05_23
UPDATE Sección_26_08_05_23 SET Educadores26='Feliz dia de la Madre'
WHERE Educadores26='Elimer Aquino'
--Identity no se actualiza--
UPDATE Sección_26_08_05_23 SET Códigos26=1000
WHERE Códigos26=800
---------------------------------
UPDATE Sección_26_08_05_23
SET Fechas_Inicio26 = '23-05-30'
WHERE Horario26 >= 19;
SELECT * FROM Sección_26_08_05_23



