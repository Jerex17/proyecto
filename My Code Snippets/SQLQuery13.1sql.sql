USE D_D_B_D_#_APELLIDO_2023
GO
CREATE TABLE Admisiones_26_25_04_23 (C�digos_Admi NUMERIC, Especialidades26 VARCHAR (25), Fechas26 DATE, Cupos26 NUMERIC,
Duraci�n26 VARCHAR (15) not null, Precio26 FLOAT, Primary key(Duraci�n26));

SET DATEFORMAT 'DMY'
INSERT INTO Admisiones_26_25_04_23
VALUES (101 , 'Sistema Operativo' , '25-04-2023' , 20 , '60 horas' , '2500.00');

INSERT INTO Admisiones_26_25_04_23
VALUES (110 , 'Electr�nica Digital' , '25-04-2023' , 30 , '75 horas' , '3200.50');

INSERT INTO Admisiones_26_25_04_23
VALUES (200 , 'Visitador Medico' , '26-04-2023' , 15 , '40 horas' , '5000.00');

INSERT INTO Admisiones_26_25_04_23
VALUES (022 , 'Vendedor' , '26-04-2023' , 25 , '30 horas' , '8350.00');

INSERT INTO Admisiones_26_25_04_23
VALUES (035 , 'Electricidad Residencial' , '26-04-2023' , 40 , '90 horas' , '4690.00');

INSERT INTO Admisiones_26_25_04_23
VALUES (008 , 'Masaje Terap�utico' , '26-04-2023' , 50 , '95 horas' , '10000.00');

INSERT INTO Admisiones_26_25_04_23
VALUES (004 , 'Fotograf�a Digital' , '26-04-2023' , 18 , '45 horas' , '5500.0');

INSERT INTO Admisiones_26_25_04_23
VALUES (002 , 'Estilista' , '27-04-2023' , 20 , '80 horas' , '9875.00');

INSERT INTO Admisiones_26_25_04_23
VALUES (003 , 'Locuci�n' , '27-04-2023' , 35 , '50 horas' , '6000.00');

INSERT INTO Admisiones_26_25_04_23
VALUES (103 , 'Oratoria Efectiva' , '27-04-2023' , 50 , '20 horas' , '7000.00');

SELECT * FROM Admisiones_26_25_04_23
SELECT * FROM Admisiones_26_25_04_23 WHERE C�digos_Admi<100
SELECT * FROM Admisiones_26_25_04_23 WHERE Precio26>=7000
SELECT Cupos26, Duraci�n26, Especialidades26, Fechas26
FROM Admisiones_26_25_04_23 WHERE Cupos26='20'
SELECT Precio26, C�digos_Admi FROM Admisiones_26_25_04_23 
WHERE Fechas26<>'24-04-23'
DELETE FROM Admisiones_26_25_04_23 WHERE Cupos26=50
SELECT * FROM Admisiones_26_25_04_23
DELETE FROM Admisiones_26_25_04_23 WHERE Fechas26<>'26-04-2023'
SELECT * FROM Admisiones_26_25_04_23
DELETE FROM Admisiones_26_25_04_23 WHERE Duraci�n26>='80 Horas'
SELECT * FROM Admisiones_26_25_04_23
DELETE FROM Admisiones_26_25_04_23
SELECT * FROM Admisiones_26_25_04_23