USE D_D_B_D_#_APELLIDO_2023
GO
CREATE TABLE Vendedores_26_11_2023 (Cedulas26 NUMERIC not null, Nombres26 VARCHAR (20), Apellidos26 VARCHAR (35), Años26 INTEGER, Genero26 CHAR (1), Ventas26 MONEY, Sueldos26 Float,
primary key (Cedulas26))

INSERT INTO Vendedores_26_11_2023
VALUES (00222222232 , 'Jonatán José' , 'Garrido Blanco' , 35 , 'M' , $100200 , 50000.90);

INSERT INTO Vendedores_26_11_2023
VALUES (00111111113 , 'Sol' , 'Bido Reyes' , 27 , 'F' , $79384.30 , 46355.25)
 
INSERT INTO Vendedores_26_11_2023
VALUES (00000000000 , 'Reynaldo David' , 'Pérez Morales' , 24 , 'M' , $325128.52 , 43837.40);

INSERT INTO Vendedores_26_11_2023
VALUES (10308020601 , 'Bertha Esther' , 'Martínez Cordero' , 40 , 'F' , $38000 , 23000.10);

INSERT INTO Vendedores_26_11_2023
VALUES (00110001010 , 'Obed Antonio' , 'Soriano' , 21 , 'M' , $56132.60 , 46355.25);

INSERT INTO Vendedores_26_11_2023
VALUES (11133333331 , 'Geraldina Maitte' , 'Peña Abreu' , 35 ,'F', $218999.75 , 72666.72);

INSERT INTO Vendedores_26_11_2023
VALUES (10112345670 , 'Juan Nelson' , 'Rodríguez Castillo' , 55 , 'M' , $964477.19 , 61579.66);

SELECT * FROM Vendedores_26_11_2023
SELECT * FROM Vendedores_26_11_2023 where Apellidos26='soriano'
SELECT Cedulas26, Nombres26, Ventas26 FROM Vendedores_26_11_2023 where Años26='35'
SELECT * FROM Vendedores_26_11_2023 where Genero26='M'
SELECT Apellidos26, Años26, Sueldos26 FROM Vendedores_26_11_2023 where Genero26='F'
SELECT * FROM Vendedores_26_11_2023 where Sueldos26='46355.25'
SELECT Sueldos26, Años26, Ventas26, Genero26 FROM Vendedores_26_11_2023 where Cedulas26='10112345670'