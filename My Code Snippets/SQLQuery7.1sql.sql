USE D_D_B_D_#_APELLIDO_2023

CREATE TABLE Adquirientes26 (Documentos Char (5), Apellido varchar (30) not null, Telefonos Numeric, Cajas Integer, Descuento Decimal (6,2),  Saldo Money not null, Abono Float, Fechas Datetime);

GO

Alter Table Adquirientes26
Add Primary Key (Apellido)

SET DATEFORMAT 'DMY'
INSERT INTO Adquirientes26 (Documentos, Apellido, Telefonos, Cajas, Descuento, Saldo, Abono, Fechas)
VALUES ('11-15' , 'Roble' ,  8092258946 , 1 , 1250.25 , $10345.70 , 8311.10 , '10-03-2023');

INSERT INTO Adquirientes26 (Documentos, Apellido, Telefonos, Cajas, Descuento, Saldo, Abono, Fechas)
VALUES ('12-16' , 'López' , 8293380101 , 2 , 3877.80 , $13025.47 , 5100.45 , '10-03-2023');

INSERT INTO Adquirientes26 (Documentos, Apellido, Telefonos, Cajas, Descuento, Saldo, Abono, Fechas)
VALUES ('13-17' , 'Santana' , 8497972585 , 3 , 640.10 , $3994.95 , 1500.00 , '11-03-2023');

INSERT INTO Adquirientes26 (Documentos, Apellido, Telefonos, Cajas, Descuento, Saldo, Abono, Fechas)
VALUES ('14-18' , 'Abreu' , 8292246017 , 2 , 4099.99 , $15651.36 , 11755.23 , '11-03-2023');

INSERT INTO Adquirientes26 (Documentos, Apellido, Telefonos, Cajas, Descuento, Saldo, Abono, Fechas)
VALUES ('15-19' , 'Duarte' , 8294191238 , 1 , 120.30 , $1439.29 , 746.75 , '11-03-2023');

INSERT INTO Adquirientes26 (Documentos, Apellido, Telefonos, Cajas, Descuento, Saldo, Abono, Fechas)
VALUES ('16-20' , 'Jiménez' , 2895603434 , 3 , 1025.66 , $8438.18 , 4988.65 , '12-03-2023');

INSERT INTO Adquirientes26 (Documentos, Apellido, Telefonos, Cajas, Descuento, Saldo, Abono, Fechas)
VALUES ('17-21' , 'Rojas' , 8496564492 , 1 , 5088.90 , $23767.45 , 17967.38 , '12-03-2023')

select *
from Adquirientes26

select Documentos, Apellido, Telefonos
from Adquirientes26

select Cajas, Saldo, Fechas
from Adquirientes26

select  Descuento, Saldo, Abono
from Adquirientes26

select Apellido, Fechas, Abono
from Adquirientes26
