USE D_D_B_D_#_APELLIDO_2023
GO
CREATE TABLE Pedidos_11_04_2023 (Codigos_26 char (4), Articulos_26 varchar (30) not null, Cantidades_26 integer , Precios_26 decimal (6,2), Fechas_26 date, Pagos_26 char (8)
primary key (Articulos_26));

SET DATEFORMAT 'dmy'
INSERT INTO Pedidos_11_04_2023
VALUES ('A-02','Papel Higiénico', 60, 325.82,'11-04-2023','Crédito');

INSERT INTO Pedidos_11_04_2023
VALUES ('B-55','Papel de Cocina',25, 95.50,'11-04-2023','Crédito');

INSERT INTO Pedidos_11_04_2023
VALUES ('C-01','Detergentes',100, 129.99,'12-04-2023','Contado');

INSERT INTO Pedidos_11_04_2023
VALUES ('D-13','Lavavajillas',9, 37.40,'12-04-2023','Crédito');

INSERT INTO Pedidos_11_04_2023
VALUES ('E-30','Fibraesponja',100, 65.25,'13-04-2023','Contado');

INSERT INTO Pedidos_11_04_2023
VALUES ('F-44','Esponjas Metálicas',100, 89.95,'14-04-2023','Contado');

INSERT INTO Pedidos_11_04_2023
VALUES ('G-26','Antisépticos',50, 204.75,'14-04-2023','Crédito');

SELECT * FROM Pedidos_11_04_2023
SELECT * FROM Pedidos_11_04_2023 WHERE Articulos_26='Detergentes';
SELECT Codigos_26,Articulos_26,Precios_26 FROM Pedidos_11_04_2023 WHERE Fechas_26='12-04-2023';
SELECT * FROM Pedidos_11_04_2023 WHERE Pagos_26='Crédito';
SELECT Articulos_26, Fechas_26, Pagos_26 FROM Pedidos_11_04_2023 WHERE Cantidades_26='100';
SELECT * FROM Pedidos_11_04_2023 WHERE Codigos_26='E-30';
SELECT Cantidades_26, Fechas_26, Pagos_26, Articulos_26 FROM Pedidos_11_04_2023 where Precios_26='95.50';