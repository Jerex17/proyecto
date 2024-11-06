USE D_D_B_D_#_APELLIDO_2023
GO
CREATE TABLE T�cnicos_26_08_05_23(Matriculas26 Numeric identity , Nombres26 varchar (25), Modalidad26 varchar (18),
Edad26 numeric, F_Nacimiento26  DATE , Tel�fonos26 VARCHAR (15) , E_mail26 varchar (30),
primary key(Matriculas26));

SET DATEFORMAT 'DMY'
INSERT INTO T�cnicos_26_08_05_23
VALUES('Catalino Jim�nez' , 'Tributaria' , 0 , '03-10-2006' , '809-369-1074' , 'CataMenez@gmail.com');
INSERT INTO T�cnicos_26_08_05_23
VALUES('Dilcia Paliza' , 'Enfermer�a' , 17 , '' , '849-213-9852' , 'DilPali@hotmail.com');

SET IDENTITY_INSERT T�cnicos_26_08_05_23 on;
SET DATEFORMAT 'MDY'
INSERT INTO T�cnicos_26_08_05_23 (Matriculas26 , Nombres26 , Modalidad26 ,
Edad26 , F_Nacimiento26   , Tel�fonos26  , E_mail26)
VALUES(50 , 'David M�rmol' , 'Mercadeo' , 15 , '12-18-2007' , '829-540-3300' , null);
SET DATEFORMAT 'DMY'
INSERT INTO T�cnicos_26_08_05_23 (Matriculas26 , Nombres26 , Modalidad26 ,
Edad26 , F_Nacimiento26   , Tel�fonos26  , E_mail26)
VALUES (55 , 'Yolanda Quir�s' , 'Administraci�n' , 0 , '27-02-2004' , '829-666-4444' , 'YolaQui@gmail.com');
SET IDENTITY_INSERT T�cnicos_26_08_05_23 off;

INSERT INTO T�cnicos_26_08_05_23
VALUES('Tony Ortiz' , 'Inform�tica' , 14 , null , '849-931-8477' , 'Tontiz@hotmail.com');
SET DATEFORMAT 'MDY'
INSERT INTO T�cnicos_26_08_05_23
VALUES('Irma Guti�rrez' , 'Tributaria' , 15 , '01-20-2007' , '829-722-1111' , '')

SET IDENTITY_INSERT T�cnicos_26_08_05_23 on;
SET DATEFORMAT 'DMY'
INSERT INTO T�cnicos_26_08_05_23 (Matriculas26 , Nombres26 , Modalidad26 ,
Edad26 , F_Nacimiento26   , Tel�fonos26  , E_mail26)
VALUES(60 , 'Pablo B�ez' , 'Enfermer�a' , 18 , '29-04-2004' , '' , 'PaBa@hotmail.com');
SET DATEFORMAT 'MDY'
INSERT INTO T�cnicos_26_08_05_23 (Matriculas26 , Nombres26 , Modalidad26 ,
Edad26 , F_Nacimiento26   , Tel�fonos26  , E_mail26)
VALUES(65 , 'Gina Lora' , 'Mercadeo' , null , '09-24-2006' , '809-599-6151' , 'GiRa@gmail.com');
SET IDENTITY_INSERT T�cnicos_26_08_05_23 off;

INSERT INTO T�cnicos_26_08_05_23
VALUES ('To�o Herasme' , 'Administraci�n' , 17 , '' , '849-688-1212' , 'ToMe@hotmail.com');
SET DATEFORMAT 'DMY'
INSERT INTO T�cnicos_26_08_05_23
VALUES ('Rocadis Familia' , 'Inform�tica' , 14 , '20-11-2008' , null , 'RoCa@gmail.com');

select * from T�cnicos_26_08_05_23
sp_columns T�cnicos_26_08_05_23
select * from T�cnicos_26_08_05_23 WHERE Tel�fonos26 is null;
select * from T�cnicos_26_08_05_23 WHERE E_mail26='';
select * from T�cnicos_26_08_05_23 WHERE Edad26=0;
select * from T�cnicos_26_08_05_23 WHERE F_Nacimiento26 is not null;
Update T�cnicos_26_08_05_23 Set Nombres26='Aguaceros'
Where Nombres26='Tony Ortiz';
select * from T�cnicos_26_08_05_23
Update T�cnicos_26_08_05_23 Set Edad26='20'
where Edad26<=17
select * from T�cnicos_26_08_05_23
Update T�cnicos_26_08_05_23 Set F_Nacimiento26='22-06-2002'
where F_Nacimiento26='03-10-2006'
select * from T�cnicos_26_08_05_23
--No se actualiza el identity--
update T�cnicos_26_08_05_23 Set Matriculas26='200'
where Matriculas26='50'
-----------------------------------------------
Update T�cnicos_26_08_05_23 Set E_mail26='Cuentame@gmail.com'
where Edad26<=16
SELECT * FROM T�cnicos_26_08_05_23






  