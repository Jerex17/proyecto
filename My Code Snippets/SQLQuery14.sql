USE D_D_B_D_#_APELLIDO_2023

CREATE TABLE Destalles_26_02_05_23(Códigos26 int identity, Nombres26 Varchar (65) not null, 
Especificaciones26 varchar (75) null, Unidades integer null, Importe float null,
Fechas26 Date null primary key(Códigos26));

SET DATEFORMAT 'MDY'
INSERT INTO Destalles_26_02_05_23
Values ('Proyector Viewsonic' , 'Lightstream vie-pjd5153' , 0 , 21200 , '04-30-2023');

INSERT INTO Destalles_26_02_05_23
VALUES ('Caja de disco duro 3.5' , 'Ide/sata agiler agi-6337' , 170 , 950.99 , '04-25-2023');

INSERT INTO Destalles_26_02_05_23
VALUES ('Servidor dell' , 'Poweredge-t130' , 90 , 15495.85 , '04-15-2023');

SET DATEFORMAT 'DMY'
INSERT INTO Destalles_26_02_05_23
VALUES ('Cable Red 10 pies','Myo-wkm-85, 2, 4 ghz','', 315.20,'25-04-2023');

INSERT INTO Destalles_26_02_05_23
VALUES ('Procesador amd Sempron' , '2650 1.45ghz socket am1' , null , 0 , '17-04-2023');

INSERT INTO Destalles_26_02_05_23
VALUES ('Router Inalambrico' , 'Tenda n301 con 2 antenas' ,45, 2325.30, '20-04-2023');

Set identity_insert Destalles_26_02_05_23 on;

INSERT INTO Destalles_26_02_05_23(Códigos26, Nombres26, Especificaciones26, Unidades, 
Importe, Fechas26)
VALUES (100 ,'Bocina mini bluetooth' , 'One ev-801sr/rd/bk' , null , '' , '01-05-2023');

SET DATEFORMAT 'MDY'
INSERT INTO Destalles_26_02_05_23(Códigos26, Nombres26, Especificaciones26, Unidades, 
Importe, Fechas26)
VALUES (200,'Meta Quest Pro','',100,0,'04-18-2023');

SET DATEFORMAT 'DMY'
INSERT INTO Destalles_26_02_05_23(Códigos26, Nombres26, Especificaciones26, Unidades, 
Importe, Fechas26)
VALUES (240,'VR 2.0','', 128, 0,'16-04-2023');

INSERT INTO Destalles_26_02_05_23(Códigos26, Nombres26, Especificaciones26, Unidades, 
Importe, Fechas26)
VALUES (280,'MZ-V8P2T0B/AM','', 66, 0,'15-04-2023')

Select * from Destalles_26_02_05_23
sp_columns Destalles_26_02_05_23
Select * from Destalles_26_02_05_23 WHERE Fechas26 is null;
Select * from Destalles_26_02_05_23 WHERE Unidades='';
SELECT * from Destalles_26_02_05_23 WHERE Importe=0;
Select * from Destalles_26_02_05_23 where Fechas26 is not null;
Update Destalles_26_02_05_23 Set Nombres26='Dispositivo Audio Visual'
Where Nombres26='Proyector Viewsonic';
select * from Destalles_26_02_05_23
Update Destalles_26_02_05_23 Set Unidades=200 WHERE Códigos26>=51125;
Select * from Destalles_26_02_05_23
Update Destalles_26_02_05_23 Set Especificaciones26='Apagado Digital'
Where Especificaciones26='Poweredge-t130';
UPDATE Destalles_26_02_05_23 SET Fechas26='15-04-2023' WHERE Importe<=3000.00;
Select * from Destalles_26_02_05_23