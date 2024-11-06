USE D_D_B_D_#_5toE_2023

CREATE TABLE EMPLEADOS_EMPRESA_2023 (Codigo numeric,Nombres varchar (25),Telefono varchar(15),Direccion varchar(255),Cargo varchar (50), Fecha_ingreso date,
Salario money, Primary key(Nombres));



SET DATEFORMAT 'DMY'
INSERT INTO EMPLEADOS_EMPRESA_2023
VALUES (456 , 'Carlos' , '809-098-2332' , 'Calle de la Luna, #42' , 'Director de Operaciones' , '2-05-2016', '$400.999');

INSERT INTO EMPLEADOS_EMPRESA_2023
VALUES (657 , 'Pedro' , '809-789-8760' , 'Avenida de las Estrellas, #7' , 'Director de Finanzas' , '8-08-2016' , '$400,000');

INSERT INTO EMPLEADOS_EMPRESA_2023
VALUES (321 , 'Juliana' , '829-897-6098' , 'Calle de los Sueños, #123' , 'Directora de Marketing' , '27-08-2016' , '$200,000');

INSERT INTO EMPLEADOS_EMPRESA_2023
VALUES (589 , 'Juan' , '809-748-8595' , 'Carrera del Arcoiris, #777' , 'Director de Recursos Humanos' , '10-01-2018' , '$250,000');

INSERT INTO EMPLEADOS_EMPRESA_2023
VALUES (984 , 'Ricky' , '829-858-7495' , 'Calle del Unicornio, #99' , 'Director de Tecnologia de la Informacion' , '5-04-2018' , '$300,000');

INSERT INTO EMPLEADOS_EMPRESA_2023
VALUES (765 , 'Maria' , '849-200-2001' , 'Avenida de los Cuentos, #456' , 'Directora de Ventas' , '8-08-2018' , '$200,000');

INSERT INTO EMPLEADOS_EMPRESA_2023
VALUES (060 , 'Bryan' , '809-589-5809' , 'Paseo de la Aurora, #333' , 'Director de Desarrollo de Negocios' , '12-10-2019' , '$250.999');

INSERT INTO EMPLEADOS_EMPRESA_2023
VALUES (687 , 'Katherine' , '829-854-1221' , 'Calle de las Maravillas, #88' , 'Gerente de Producto' , '24-02-2021' , '$150,000');

INSERT INTO EMPLEADOS_EMPRESA_2023
VALUES (157 , 'Rafael' , '809-589-9390' , 'Avenida de la Aventura, #555' , 'Gerente de Proyectos' , '24-05-2021' , '$130,000');

INSERT INTO EMPLEADOS_EMPRESA_2023
VALUES (745 , 'Manolo' , '809-000-0190' , 'Calle del Misterio, #13' , 'Administrador General' , '3-01-2022' , '$200.999');

INSERT INTO EMPLEADOS_EMPRESA_2023
VALUES (200 , 'Enmanuel','809-897-0245','Calle 200, #11', 'Gerente', '02-10-2019','$150.999');



select * from EMPLEADOS_EMPRESA_2023

select* from  EMPLEADOS_EMPRESA_2023 where Salario = '$150,000';

CREATE VIEW SueldosParaCarlitos as 
select nombres, Salario
from EMPLEADOS_EMPRESA_2023;

select * from SueldosParaCarlitos;

select * from EMPLEADOS_EMPRESA_2023 where Salario >= 200000 and Salario <= 400000;

delete from  EMPLEADOS_EMPRESA_2023 where Nombres = 'Juliana';

insert into EMPLEADOS_EMPRESA_2023
VALUES (469 , 'Carlito','809-985-4872','Calle 490, #20', 'Delivery', '02-10-2015','$20.999');

--PRACTICA METODOS DE ACCESO--

select * from EMPLEADOS_EMPRESA_2023
Select avg(Salario) as 'promedio Salario' From EMPLEADOS_EMPRESA_2023;  -- AVG -                                                                                                                                                                                                                                                             
Select count(*) as 'promedio Salario' From EMPLEADOS_EMPRESA_2023;  -- COUNT --                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
Select Nombres,Salario, ROUND(Salario,1) as 'salario_redondeado' FROM EMPLEADOS_EMPRESA_2023; -- ROUND --
Select top 1* from EMPLEADOS_EMPRESA_2023; -- FIRST --
Select top 1* from EMPLEADOS_EMPRESA_2023 order by Nombres desc; -- LAST --
Select max(Salario) as 'promedio Salario' From EMPLEADOS_EMPRESA_2023; -- MAX --
Select sum(Salario) as 'promedio Salario' From EMPLEADOS_EMPRESA_2023; -- SUM --
-- Codigo empleado menor a mayor --
select top 10* from EMPLEADOS_EMPRESA_2023 order by Codigo asc;
-- Codigo empleado mayor a menor --
select top 10* from EMPLEADOS_EMPRESA_2023 order by Codigo desc;
select Nombres,Sum(salario) as 'Salario mayor o igual a 250000' from EMPLEADOS_EMPRESA_2023 group by Nombres having sum(Salario)>=250000; -- HAVING --

-- PRACTICAS SENTENCIAS --
Select min(Codigo) as 'CodigoMinimo' from EMPLEADOS_EMPRESA_2023; -- MIN --
select top 1 upper ('Ok chicos') From EMPLEADOS_EMPRESA_2023; -- UCASE --
select top 1 lower ('Hello chicos') From EMPLEADOS_EMPRESA_2023; -- LCASE --
select top 1 substring('Sara''Juan''Rigoberto''Pamela''Julia',1,37) as 'Subcadena' From EMPLEADOS_EMPRESA_2023; -- LEN --
select top 1 getdate() as 'Hora actual' From EMPLEADOS_EMPRESA_2023; --NOW --
select format (50, 'N')

--Practica procedimiento almacenado
--Procedimiento
CREATE PROCEDURE SP_TrabajadorPorCodigo
@CodigoBuscado Numeric
AS
BEGIN
--Desarrollo del procedimiento almacenado
SELECT * FROM EMPLEADOS_EMPRESA_2023  Where Codigo >= @CodigoBuscado
END;

--Desarrollar el procedimiento almacenado paro obtener clientes con salario mayor a 200,000
EXEC SP_TrabajadorPorCodigo @CodigoBuscado = 589


DROP PROCEDURE IF EXISTS ClientePorSalario;

BACKUP DATABASE D_D_B_D_#_5toE_2023
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\Backup\D_D_B_D_#_5toE_2023.bak'

with format,	
       Medianame = 'BackupFull',
	   Name = 'Backup Full of  D_D_B_D_#_5toE_2023'

	   Restore verifyonly
	   from disk = 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\Backup\D_D_B_D_#_5toE_2023.bak';


