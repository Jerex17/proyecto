USE D_D_B_D_#_APELLIDO_2023
GO
CREATE TABLE Calificaciones_26_25_04 (Fechas26 DATE, Alumnos26 VARCHAR (16), Asignaturas26 VARCHAR (16),
C_26_1 NUMERIC, C_26_2 NUMERIC, C_26_3 NUMERIC, C_26_4 NUMERIC, C_Final_26 FLOAT);

SET DATEFORMAT 'DMY';
INSERT INTO Calificaciones_26_25_04
VALUES ('24-04-23' , 'Maritza Torres' , 'Español' , 90 , 85 , 88 , 92 , '88.75');

INSERT INTO Calificaciones_26_25_04
VALUES ('24-04-23' , 'Elisa Gerónimo' , 'Matemática' , 92 , 95 , 98 , 100 , '96.25');

INSERT INTO Calificaciones_26_25_04
VALUES ('25-04-23' , 'Yolkis Aquino' , 'Inglés' , 80 , 80 , 83 , 84 , '81.75');

INSERT INTO Calificaciones_26_25_04
VALUES ('25-04-23' , 'José Javier' , 'Contabilidad' , 97 , 100 , 99 , 100 , 99);

INSERT INTO Calificaciones_26_25_04
VALUES ('25-04-23' , 'Fernando Soto' , 'Informática' , 70 , 69 , 60 , 77 , 69);

INSERT INTO Calificaciones_26_25_04
VALUES ('26-04-23' , 'Arisleida Molina' , 'Sociales' , 88 , 93 , 96 , 99 , 94);

INSERT INTO Calificaciones_26_25_04
VALUES ('26-04-23' , 'Wanda Banderas' , 'Física' , 74 , 70 , 69 , 72 , '71.25');

INSERT INTO Calificaciones_26_25_04
VALUES ('27-04-23' , 'Sheila Delgado' , 'Educ. Física' , 86 , 85 , 88 , 89 , 87);

INSERT INTO Calificaciones_26_25_04
VALUES ('27-04-23' , 'Alejandro Pozo' , 'Francés' , 100 , 100 , 100 , 100 , 100);

INSERT INTO Calificaciones_26_25_04
VALUES ('28-04-23' , 'Radhames Zamora' , 'Química' , 60 , 50 , 55 , 70 , '58.75');

SELECT * FROM Calificaciones_26_25_04
SELECT * FROM Calificaciones_26_25_04 WHERE C_26_2>=80
SELECT Alumnos26, Asignaturas26, C_Final_26 FROM Calificaciones_26_25_04 WHERE
Fechas26<>'25-04-23'
SELECT * FROM Calificaciones_26_25_04 WHERE C_Final_26<=80
SELECT C_26_1, C_26_2, C_26_3, C_26_4, C_Final_26 FROM Calificaciones_26_25_04
WHERE Alumnos26='Alejandro Pozo'
DELETE FROM Calificaciones_26_25_04 WHERE Asignaturas26='Informática'
SELECT * FROM Calificaciones_26_25_04
DELETE FROM Calificaciones_26_25_04 WHERE C_Final_26<60
SELECT * FROM Calificaciones_26_25_04
DELETE FROM Calificaciones_26_25_04 WHERE Fechas26<>'24-04-23'
SELECT * FROM Calificaciones_26_25_04
DELETE FROM Calificaciones_26_25_04
SELECT * FROM Calificaciones_26_25_04