USE D_D_B_D_#_Apellido_2023
GO
CREATE TABLE Proveedores_26_21_04_23 (Documentos char (5) not null, Apellidos varchar (15),
Teléfonos_26 numeric, Cajas integer, Descuento_26 decimal (7, 2), Pagar_26 money, Abono_26 float, Fechas_26 datetime, primary key(Documentos));

SET DATEFORMAT 'DMY'
INSERT INTO Proveedores_26_21_04_23
VALUES ('11-15' , 'Roble' , 8092258946 , 1 , 1250.25 , $10345.70 , 8311.10 , '21-04-2023');

INSERT INTO Proveedores_26_21_04_23
VALUES ('12-16' , 'López' , 8293380101 , 2 , 3877.80 , $13025.47 , 5100.45 , '21-04-2023');

INSERT INTO Proveedores_26_21_04_23
VALUES ('13-17' , 'Santana' , 8497972585 , 3 , 640.10 , $3994.95 , 1500.00 , '22-04-2023');

INSERT INTO Proveedores_26_21_04_23
VALUES ('14-18' , 'Abreu' , 8292246017 , 2 , 4099.99 , $15651.36 , 11755.23 , '22-04-2023');

INSERT INTO Proveedores_26_21_04_23
VALUES ('15-19' , 'Duarte' , 8294191238 , 1 , 120.30 , $1439.29 , 746.75 , '23-04-2023');

INSERT INTO Proveedores_26_21_04_23
VALUES ('16-20' , 'Jiménez' , 2895603434 , 3 , 1025.66 , $8438.29 , 4988.65 , '23-04-2023');

INSERT INTO Proveedores_26_21_04_23
VALUES ('17-21' , 'Rojas' , 8496564492 , 1 , 5088.90 , $23767.45 , 17967.38 , '24-04-2023');


Select * from Proveedores_26_21_04_23;
Select *from Proveedores_26_21_04_23 where Pagar_26>=12000;
Select * from Proveedores_26_21_04_23 where Abono_26<6000;
Select Apellidos, Cajas, Pagar_26, Fechas_26 from Proveedores_26_21_04_23 where Cajas<>1;
Select Documentos, Teléfonos_26, Descuento_26, Apellidos from Proveedores_26_21_04_23
where Apellidos='Duarte';
delete from Proveedores_26_21_04_23 where Teléfonos_26='8292246017';
Select * from Proveedores_26_21_04_23;
delete from Proveedores_26_21_04_23 where Fechas_26='24-04-2023';
Select * from Proveedores_26_21_04_23;
delete from Proveedores_26_21_04_23 where Descuento_26<=1000;
Select * from Proveedores_26_21_04_23;
Delete  from Proveedores_26_21_04_23;
Select * from Proveedores_26_21_04_23;