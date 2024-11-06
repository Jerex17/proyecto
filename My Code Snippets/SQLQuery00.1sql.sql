USE D_D_B_D_#_APELLIDO_2023
GO
CREATE TABLE Admisiones_Fecha (Folio Numeric (5), Rama VARCHAR (50), Fechas DATE, Cuotas NUMERIC, Horario VARCHAR (20),
Carnet DECIMAL (10,5) not null, Admision DECIMAL (10,5), Cuenta DECIMAL (10,5) PRIMARY KEY (Carnet))

SET DATEFORMAT 'DMY'
INSERT INTO Admisiones_Fecha
VALUES (15 , 'Carpintería' , '10-03-2023' , 17 , '10;00 a.m.' , 225.30 , 2300.50 , $2550.8);

INSERT INTO Admisiones_Fecha
VALUES (30 , 'Desabollador y Pintura' , '10-03-2023' , 22 , '5:00 p.m.' , 310.25 , 2980.15 , $3290.80);

INSERT INTO Admisiones_Fecha
VALUES (45 , 'Repostería' , '13-03-2023' , 29 , '9:00 a.m.' , 140.50 , 2700.80 , $2841.30);

INSERT INTO Admisiones_Fecha
VALUES (60 , 'Diseño' , '13-03-2023' , 20 , '6:00 p.m.' , 270.95 , 3275.50 , $3546.45);

INSERT INTO Admisiones_Fecha
VALUES (75 , 'Confesiones ' , '14-03-2023' , 11 , '11:00 a.m.' , 350.00 , 4500.00 , $4850.00);

INSERT INTO Admisiones_Fecha
VALUES (90 , 'Mecánica Diesel' , '14-03-2023' , 8 , '7:00 p.m.' , 325.75 , 6225.35 , $10451.10);

INSERT INTO Admisiones_Fecha
VALUES (105 , 'Técnico Dental' , '15-03-2023' , 13 , '8:00 a.m.' , 300.00 , 3000.00 , $3300.00);

INSERT INTO Admisiones_Fecha
VALUES (120 , 'Robótica' , '15-03-2023' , 34 , '3:00 p.m.' , 375.50 , 5656.77 , $6432.27);

INSERT INTO Admisiones_Fecha
VALUES (135 , 'Hotelería' , '16-03-2023' , 30 , '10:00 a.m.' , 200.00 , 4899.00 , $5099.00);

INSERT INTO Admisiones_Fecha
VALUES (150 , 'Arte Culinario' , '16-03-2023' , 14 , '4:00 p.m.' , 275.90 , 5000.00 , $5275.00);

SELECT*FROM Admisiones_Fecha
SELECT Rama, Fechas, Cuotas FROM Admisiones_Fecha
SELECT Folio, Horario, Rama FROM Admisiones_Fecha
SELECT Rama, Carnet,  Admision FROM Admisiones_Fecha
SELECT Folio, Rama, Carnet, Admision, Cuenta FROM Admisiones_Fecha