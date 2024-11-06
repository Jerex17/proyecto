USE D_D_B_D_#_APELLIDO_2023
GO
CREATE TABLE Admisiones_26_25_04_23 (Códigos_Admi NUMERIC, Especialidades26 VARCHAR (25), Fechas26 DATE, Cupos26 NUMERIC,
Duración26 VARCHAR (15) not null, Precio26 FLOAT, Primary key(Duración26));

SET DATEFORMAT 'DMY'
INSERT INTO Admisiones_26_25_04_23
VALUES (101 , 'Sistema Operativo' , '25-04-2023' , 20 , '60 horas' , '2500.00');

INSERT INTO Admisiones_26_25_04_23
VALUES (110 , 'Electrónica Digital' , '25-04-2023' , 30 , '75 horas' , '3200.50');

INSERT INTO Admisiones_26_25_04_23
VALUES (200 , 'Visitador Medico' , '26-04-2023' , 15 , '40 horas' , '5000.00');

INSERT INTO Admisiones_26_25_04_23
VALUES (022 , 'Vendedor' , '26-04-2023' , 25 , '30 horas' , '8350.00');

INSERT INTO Admisiones_26_25_04_23
VALUES (035 , 'Electricidad Residencial' , '26-04-2023' , 40 , '90 horas' , '4690.00');

INSERT INTO Admisiones_26_25_04_23
VALUES (008 , 'Masaje Terapéutico' , '26-04-2023' , 50 , '95 horas' , '10000.00');

INSERT INTO Admisiones_26_25_04_23
VALUES (004 , 'Fotografía Digital' , '26-04-2023' , 18 , '45 horas' , '5500.0');

INSERT INTO Admisiones_26_25_04_23
VALUES (002 , 'Estilista' , '27-04-2023' , 20 , '80 horas' , '9875.00');

INSERT INTO Admisiones_26_25_04_23
VALUES (003 , 'Locución' , '27-04-2023' , 35 , '50 horas' , '6000.00');

INSERT INTO Admisiones_26_25_04_23
VALUES (103 , 'Oratoria Efectiva' , '27-04-2023' , 50 , '20 horas' , '7000.00');

SELECT * FROM Admisiones_26_25_04_23
SELECT * FROM Admisiones_26_25_04_23 WHERE Códigos_Admi<100
SELECT * FROM Admisiones_26_25_04_23 WHERE Precio26>=7000
SELECT Cupos26, Duración26, Especialidades26, Fechas26
FROM Admisiones_26_25_04_23 WHERE Cupos26='20'
SELECT Precio26, Códigos_Admi FROM Admisiones_26_25_04_23 
WHERE Fechas26<>'24-04-23'
DELETE FROM Admisiones_26_25_04_23 WHERE Cupos26=50
SELECT * FROM Admisiones_26_25_04_23
DELETE FROM Admisiones_26_25_04_23 WHERE Fechas26<>'26-04-2023'
SELECT * FROM Admisiones_26_25_04_23
DELETE FROM Admisiones_26_25_04_23 WHERE Duración26>='80 Horas'
SELECT * FROM Admisiones_26_25_04_23
DELETE FROM Admisiones_26_25_04_23
SELECT * FROM Admisiones_26_25_04_23