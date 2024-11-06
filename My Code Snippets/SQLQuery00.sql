USE D_D_B_D_#_APELLIDO_2023

CREATE TABLE Cambio_de_Moneda_26 (Turno VARCHAR (10), Tipo_Moneda VARCHAR (20) not null, Taza DECIMAL (10,4), Cantidad INTEGER, Impuesto DECIMAL (10,5),
Suma_Recibida DECIMAL (10,5), Cedula VARCHAR (15), Fechas DATE, PRIMARY KEY(Tipo_Moneda));

SET DATEFORMAT 'DMY'
INSERT INTO Cambio_De_Moneda_26
VALUES ('To4' , 'Euro' , 59.0431 , 100 , 100.50 , $5904.31 , 00155239 , '12-03-2023');

INSERT INTO Cambio_De_Moneda_26
VALUES ('Dc8' , 'Dólar Americano' , 55.2502 , 200 , 235.15 , $11050.04 , 11023625 , '13-03-2023');

INSERT INTO Cambio_De_Moneda_26
VALUES ('Mn5' , 'Libra Esterlina' , 66.4424 , 75 , 89.10 , $4983.18 , 01478942 , '13-03-2023');

INSERT INTO Cambio_De_Moneda_26
VALUES ('Hl9' , 'Franco Suizo' , 59.3613 , 50 , 61.35 , $2968.065 , 21478963 , '14-03-2023');

INSERT INTO Cambio_De_Moneda_26
VALUES ('Vj3' , 'Yen Japonés' , 0.4062 , 300 , 0.10 , $121.86 , 00589314 , '14-03-2023');

INSERT INTO Cambio_De_Moneda_26
VALUES ('Gs7' , 'Dólar Hongkonés' , 7.0386 , 150 , 30.02 , $1055.79 , 10123211 , '15-03-2023');

INSERT INTO Cambio_De_Moneda_26
VALUES ('Fb1' , 'Dólar Canadiense' , 40.5745 , 225 , 199.56 , $9129.2625 , 00025899 , '15-03-2023');

INSERT INTO Cambio_De_Moneda_26
VALUES ('Uy2' , 'Yuan Chino' , 7.92 , 325 , 0.23 , $2574 , 20398745 , '16-03-2023');

INSERT INTO Cambio_De_Moneda_26
VALUES ('Lk6' , 'Rublo Ruso' , 0.7328 , 420 , 0.29 , $307.776 , 01100222 , '17-03-2023');

INSERT INTO Cambio_De_Moneda_26
VALUES ('Re0' , 'Peso Mexicano' , 3.0688 , 610 , 43.63 , $1871.968 , 02133887 , '17-03-2023');

SELECT * FROM Cambio_De_Moneda_26
SELECT Turno, Cedula , Fechas FROM Cambio_De_Moneda_26
SELECT Taza, Cantidad, Suma_Recibida FROM Cambio_De_Moneda_26
SELECT Impuesto, Tipo_Moneda, Taza FROM Cambio_De_Moneda_26
SELECT Fechas, Cantidad, Tipo_Moneda FROM Cambio_De_Moneda_26