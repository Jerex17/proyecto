USE D_D_B_D_#_5toE_2023
Go
CREATE TABLE Descripcion (Codigo numeric identity(50,25), Apellido varchar (25) not null, Unidad varchar not null default 'vacio', Notificacion varchar (25) null,
Importe money null, Fecha date null, Primary key(codigo));
SET DATEFORMAT 'MDY'
INSERT INTO Descripcion
VALUES(089 , 'Geronimo' , 'Unidad Numero 4' , 'Necesita Mantenimiento' , $500 , '05-13-2023');

Set identity_insert Garaje26_15_05_23 on;
SET DATEFORMAT 'DMY'
INSERT INTO Descripcion (Codigo,Apellido,Unidad,Notificacion,Importe,Fecha)
VALUES(079 , 'Mendez' , 'Unidad Numero 7' , 'Completo' , $700 , '15-05-2023');
INSERT INTO Descripcion (Codigo,Apellido,Unidad,Notificacion,Importe,Fecha)
VALUES(306 , 'Jaime' , 'Unidad Numero 4' , 'Falta orden en documentos' , $1000 , '17-05-2023')
SET DATEFORMAT 'MDY'
INSERT INTO Descripcion (Codigo,Apellido,Unidad,Notificacion,Importe,Fecha)
VALUES(460 , 'Perez' , 'Unidad Numero 1' , 'Completo' , $600 , '05-18-2023')
Set identity_insert Garaje26_15_05_23 off;

INSERT INTO Descripcion
VALUES(001 , 'Fausto Diaz' , 'B-664431' , 6 , Null , 125 , 750);
INSERT INTO Garaje26_15_05_23
VALUES('D' , '' , Null , 4 , '04-19-2023' , 150 , Null);
INSERT INTO Garaje26_15_05_23
VALUES('' , 'Juana Valdez' , '' , 0 , '' , Null , 500);
SET DATEFORMAT 'DMY'
INSERT INTO Garaje26_15_05_23
VALUES('I' , default , 'I-881084' , '15' , '30-04-2023' , 175 , 2625);
SET DATEFORMAT 'MDY'
INSERT INTO Garaje26_15_05_23
VALUES('G' , 'Alfredo B�ez' , 'G-005539' , 24 , '01-05-2023' , 125 , 3000);
INSERT INTO Garaje26_15_05_23
VALUES('X' , 'Manuel Nuñez' , 'X-001123' , 36 , '02-05-2023' , 100 , 3600);


BACKUP DATABASE D_D_B_D_#_5toE_2023
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\Backup\D_D_B_D_#_5toE_2023.bak'
WITH FORMAT, 
     MEDIANAME = 'MyMediaSet',
     NAME = 'Full Backup of D_D_B_D_#_5toE_2023';


RESTORE VERIFYONLY
FROM DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\Backup\D_D_B_D_#_5toE_2023.bak'; 


