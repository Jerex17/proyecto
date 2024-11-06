USE D_D_B_D_#_APELLIDO_2023
GO
CREATE TABLE Personal_26_Administrativo26_05_23 (Códigos26 int identity(100,15), Nombres26 Varchar (15) not null default 'Popeyes', Cédula26 Varchar (35), Fechas26 Date, 
Oficinas26 Varchar (25), SueldoBruto26 Decimal, Deducción26 Decimal, Primary Key(Códigos26));

SET DATEFORMAT 'dmy'
INSERT INTO Personal_26_Administrativo26_05_23
VALUES ('Báez' , '001-0151520-2' , '25-05-2023' , 'Gerencia' , 85000.45 , 7895.36);
INSERT INTO Personal_26_Administrativo26_05_23
VALUES ('Alcántara' , '000-4545123-3' , '27-05-2023' , 'Secretaria' , 31564.20 , 2761.20);
INSERT INTO Personal_26_Administrativo26_05_23
VALUES ('Duarte' , '022-3337895-0' , '29-05-2023' , 'Sistemas' , 66214.90 , 4335.80);
SET DATEFORMAT 'mdy'
INSERT INTO Personal_26_Administrativo26_05_23
VALUES ('González' , '' , '05-30-2023' , 'Secretaria' , 34947.10 , 3166.38);
INSERT INTO Personal_26_Administrativo26_05_23
VALUES ('Cruz' , '111-8943698-4' , null , 'Contabilidad' , 55112.33 , 4321.10);

Set identity_insert Personal_26_Administrativo26_05_23 on;

INSERT INTO Personal_26_Administrativo26_05_23 (Códigos26, Nombres26, Cédula26, Fechas26, 
Oficinas26, SueldoBruto26, Deducción26)
Values (64 , default , null , '05-31-2023' , 'Administración' ,  '73040.11' , '6156.92');
INSERT INTO Personal_26_Administrativo26_05_23 (Códigos26, Nombres26, Cédula26, Fechas26, 
Oficinas26, SueldoBruto26, Deducción26)
Values (74 , 'Aguilar' , '010-8521111-2' , '05-28-2023' , 'Sistemas' , 50285.75 , 4112.28);
SET DATEFORMAT 'dmy'
INSERT INTO Personal_26_Administrativo26_05_23 (Códigos26, Nombres26, Cédula26, Fechas26, 
Oficinas26, SueldoBruto26, Deducción26)
Values (84 , 'Báez' , '001-9513521-9' , '17-05-2023' , 'Administración' , 89346.62 , 8695.48);
INSERT INTO Personal_26_Administrativo26_05_23 (Códigos26, Nombres26, Cédula26, Fechas26, 
Oficinas26, SueldoBruto26, Deducción26)
Values  (94 , default , '011-7771598-1' , '16-05-2023' , 'Secretaria' , 0 , 0);

Set identity_insert Personal_26_Administrativo26_05_23 off;
SET DATEFORMAT 'mdy'
INSERT INTO Personal_26_Administrativo26_05_23
VALUES (default , null , '06-20-2023' , 'Sistemas' , 0 , 0)

select * from Personal_26_Administrativo26_05_23;
sp_columns Personal_26_Administrativo26_05_23;
select ident_seed ('Personal_26_Administrativo26_05_23');
select ident_incr ('Personal_26_Administrativo26_05_23');
select count(*)from Personal_26_Administrativo26_05_23;
select count (Cédula26) from Personal_26_Administrativo26_05_23;
SELECT sum(Deducción26) AS [Totalidad De Deduccion] FROM Personal_26_Administrativo26_05_23;
SELECT sum(Deducción26) AS [Totalidad Deducción Secretaria]
FROM Personal_26_Administrativo26_05_23
WHERE Oficinas26 = 'Secretaria';
SELECT max(SueldoBruto26) AS [Sueldo Bruto más Alto]
FROM Personal_26_Administrativo26_05_23;
SELECT min(SueldoBruto26) AS [Sueldo Bruto Mínimo de Báez]
FROM Personal_26_Administrativo26_05_23
WHERE Nombres26 = 'Báez';
SELECT avg(Deducción26) AS [Promedio Deducción]
FROM Personal_26_Administrativo26_05_23
WHERE Oficinas26 = 'Sistemas';
SELECT count(*) AS [Total de Registros]
FROM Personal_26_Administrativo26_05_23
SELECT count(*) AS [Personal con Códigos menores a 94]
FROM Personal_26_Administrativo26_05_23
WHERE Códigos26 <= 94;
SELECT Nombres26 AS [Nombres#], count(Nombres26) AS [Cantidad_Nombres]
FROM Personal_26_Administrativo26_05_23
GROUP BY Nombres26;
SELECT count(Códigos26) AS [SB > 70,000.00]
FROM Personal_26_Administrativo26_05_23
WHERE SueldoBruto26 > 70000.00
GROUP BY SueldoBruto26;
SELECT Fechas26 AS [Fechas#], max(Deducción26) AS [Máximo de deducción], min(SueldoBruto26) AS [Mínimo SueldoBruto#]
FROM Personal_26_Administrativo26_05_23
GROUP BY Fechas26;
SELECT Oficinas26 AS [Oficinas#], count(CASE WHEN Deducción26 <= 5000.00 OR Deducción26 IS NULL THEN 1 ELSE NULL END) AS [Personal_Por_Oficinas]
FROM Personal_26_Administrativo26_05_23
GROUP BY Oficinas26;
SELECT SueldoBruto26 AS [SueldoBruto#], Deducción26 AS [Deducción#], (SueldoBruto26 - (Deducción26 * 0.13)) AS [Sueldo_Neto]
FROM Personal_26_Administrativo26_05_23;
SELECT Nombres26 AS [Nombres#], AVG(SueldoBruto26) AS [Promedio SueldoBruto#]
FROM Personal_26_Administrativo26_05_23
WHERE SueldoBruto26 IS NOT NULL
GROUP BY Nombres26;
SELECT Fechas26 AS [Fechas#], COUNT(*) AS [Default]
FROM Personal_26_Administrativo26_05_23
WHERE Nombres26 = 'Default'
GROUP BY Fechas26;







