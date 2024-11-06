create database Ovaps_Santiago
Use Ovaps_Santiago

go

create table Sucursal(
Creacion_De_La_Sucursal varchar (255), Num_Sucursal int, nombre varchar (255), Direccion varchar(255),
 Telefono numeric, Codigo_Postal int);

 Insert into Sucursal
Values('1991',2,'Ovaps_Santiago','Av. Salvador Estrella Sadhalá Santiago de los Caballeros',8298957745,51000);
select*from Sucursal


create table Empleados(
Tipo_de_Sangre varchar (5), 
Cargo varchar(255),
Id_empleados varchar(255),
Clave NVARCHAR(100) NOT NULL,
Nombre NVARCHAR(100) NOT NULL,
Apellido varchar(255),
Fecha_Nac date,
Telefono varchar(255),
Departamento varchar (255),
Fecha_Ingreso date,
Salario_Mensual money,
);
SET DATEFORMAT 'YMD';
INSERT INTO Empleados 
VALUES('O+', 'Gerente', 'S-98547621', 'A1B2C3D4E5', 'Juan', 'linarez', '1979-05-03', '809-236-9877', 'Gerencia', '2010-06-08', 60000.00);

INSERT INTO Empleados 
VALUES('O-', 'Secretaria', 'S-45621895', 'F6G7H8I9J0', 'fefita', 'Alvarez', '1978-01-15', '809-559-6224', 'Administración', '2010-08-06', 40000.00);

INSERT INTO Empleados 
VALUES('A+', 'Servicio al cliente', 'S-78965412', 'K1L2M3N4O5', 'Bimbo', 'Martinez', '1985-05-20', '809-123-4567', 'Servicio al Cliente', '2014-02-14', 22000.00);

INSERT INTO Empleados
VALUES('B+', 'Servicio al cliente', 'S-12345678', 'P6Q7R8S9T0', 'Laura', 'Gomez', '1990-11-10', '809-987-6543', 'Servicio al Cliente', '2018-07-03', 22500.00);

INSERT INTO Empleados 
VALUES('AB-', 'Servicio al cliente', 'S-98765432', 'U1V2W3X4Y5', 'Pedro', 'Hernandez', '1982-09-25', '809-321-7890', 'Servicio al Cliente', '2012-10-30', 22000.00);

INSERT INTO Empleados 
VALUES('O+', 'Supervisora', 'S-65432198', 'Z6A7B8C9D0', 'Ana', 'Lopez', '1975-03-08', '809-456-1234', 'Supervisión', '2008-04-18', 25000.00);

INSERT INTO Empleados 
VALUES('A-', 'Director financiero', 'S-32198765', 'E1F2G3H4I5', 'Miguel', 'Fernandez', '1988-07-12', '809-654-7890', 'Finanzas', '2015-09-22', 48000.00);

INSERT INTO Empleados 
VALUES('AB+', 'Directora de marketing', 'S-65412398', 'J6K7L8M9N0', 'Carmen', 'Rodriguez', '1980-12-30', '809-789-4561', 'Marketing', '2011-11-11', 42000.00);

INSERT INTO Empleados 
VALUES('B-', 'Director de ventas', 'S-32165498', 'O1P2Q3R4S5', 'Juhan', 'Perez', '1987-04-05', '809-987-6541', 'Ventas', '2017-06-25', 62000.00);

INSERT INTO Empleados 
VALUES('O-', 'Recursos humanos', 'S-78932145', 'T6U7V8W9X0', 'Maria', 'Gonzalez', '1992-08-18', '809-123-7894', 'Recursos Humanos', '2019-03-10', 17200.00);

INSERT INTO Empleados 
VALUES('A+', 'Recursos humanos', 'S-98765412', 'Y1Z2A3B4C5', 'Raul', 'Sanchez', '1973-06-29', '809-321-9876', 'Recursos Humanos', '2006-01-07', 17200.00);

INSERT INTO Empleados 
VALUES('B+', 'Operario', 'S-65478932', 'D6E7F8G9H0', 'Luis', 'Fernandez', '1984-02-14', '809-456-3217', 'Operaciones', '2013-12-09', 38000.00);

INSERT INTO Empleados 
VALUES('AB-', 'Operario', 'S-32165478', 'I1J2K3L4M5', 'Elena', 'Martinez', '1977-09-03', '809-654-9873', 'Operaciones', '2016-04-28', 38000.00);

INSERT INTO Empleados 
VALUES('O+', 'Operario', 'S-65498731', 'N6O7P8Q9R0', 'Andres', 'Lopez', '1989-11-24', '809-789-3214', 'Operaciones', '2018-09-15', 38000.00);

INSERT INTO Empleados 
VALUES('A-', 'Operario', 'S-32145698', 'S1T2U3V4W5', 'Sofia', 'Gomez', '1981-07-17', '809-987-6548', 'Operaciones', '2012-08-02', 38500.00);

INSERT INTO Empleados 
VALUES('AB+', 'Operario', 'S-98732145', 'X6Y7Z8A9B0', 'Javier', 'Hernandez', '1976-04-12', '809-123-9876', 'Operaciones', '2009-05-23', 38650.00);

INSERT INTO Empleados 
VALUES('B-', 'Control de calidad', 'S-65498721', 'C1D2E3F4G5', 'Camila', 'Perez', '1986-10-07', '809-321-7896', 'Control de Calidad', '2014-11-17', 20000.00);

INSERT INTO Empleados 
VALUES('O-', 'Control de calidad', 'S-32178965', 'H6I7J8K9L0', 'Diego', 'Gonzalez', '1991-01-30', '809-456-1239', 'Control de Calidad', '2017-02-04', 21000.00);

INSERT INTO Empleados 
VALUES('A+', 'Control de calidad', 'S-98765487', 'M1N2O3P4Q5', 'Monica', 'Sanchez', '1983-08-09', '809-654-7891', 'Control de Calidad', '2019-10-28', 21000.00);

INSERT INTO Empleados 
VALUES('AB-', 'Auditor de empresa', 'S-65432189', 'R6S7T8U9V0', 'Roberto', 'Fernandez', '1979-05-15', '809-789-4563', 'Auditoría', '2010-06-13', 30000.00);
select*from Empleados;
/*Seleccionar datos especificos*/
SELECT Nombre,apellido,Cargo FROM Empleados;

/*Mostrar el salario de los empleados*/
SELECT * FROM Empleados WHERE Salario_Mensual > 40000;

/*Seleccionar empleados por departamento*/
SELECT * FROM Empleados WHERE Departamento = 'Control de Calidad';

/*Obtener  los empleados por cargo*/
SELECT * FROM Empleados WHERE Cargo = 'Supervisora';

/*Obtener todos los empleados que hayan nacido después de 1980.*/
SELECT * FROM Empleados WHERE YEAR(Fecha_Nac) > 1980;

/*Obtener el conteo total de empleados en cada departamento.*/
SELECT Departamento, COUNT(*) AS Total_Empleados FROM Empleados GROUP BY Departamento;

/*Obtener el salario más alto entre todos los empleados.*/
SELECT MAX(Salario_Mensual) AS Salario_Más_Alto FROM Empleados;

/*Obtener todos los empleados que han trabajado por más de 10 años.*/
SELECT * FROM Empleados WHERE DATEDIFF(YEAR, Fecha_Ingreso, GETDATE()) > 10;

/*Obtener el salario promedio de los empleados.*/
SELECT AVG(Salario_Mensual) AS Salario_Promedio FROM Empleados;

/*Obtener el empleado con el salario más alto.*/
SELECT * FROM Empleados WHERE Salario_Mensual = (SELECT MAX(Salario_Mensual) FROM Empleados);

/*Obtener todos los empleados con tipo de sangre 'O+'.*/
SELECT * FROM Empleados WHERE Tipo_de_Sangre = 'O+';

/*Obtener todos los empleados cuyo apellido empiece con 'G'.*/
SELECT * FROM Empleados WHERE Apellido LIKE 'G%';

/*Obtener el empleado con la fecha de nacimiento más temprana.*/
SELECT * FROM Empleados WHERE Fecha_Nac = (SELECT MIN(Fecha_Nac) FROM Empleados);

create table productos(
Id_Productos int,
Nombre varchar (255),
Marca varchar(255),
Descripcion varchar (255),
precio varchar(255),
Cantidad int
);

INSERT INTO productos
VALUES (10234567, 'Refrigerador', 'Samsung', 'Refrigerador de acero inoxidable con dispensador de agua', 1200.00, 15);

INSERT INTO productos
VALUES (10987654, 'Lavadora', 'Whirlpool', 'Lavadora de carga frontal con capacidad de 10 kg', 800.00, 20);

INSERT INTO productos
VALUES (10345678, 'Secadora', 'LG', 'Secadora de ropa con tecnología de secado rápido', 700.00, 18);

INSERT INTO productos
VALUES (10765432, 'Horno de Microondas', 'Panasonic', 'Horno de microondas con grill y función de descongelamiento', 150.00, 25);

INSERT INTO productos
VALUES (10123456, 'Licuadora', 'Oster', 'Licuadora de alta potencia con vaso de vidrio', 50.00, 30);

INSERT INTO productos
VALUES (10876543, 'Batidora de Pie', 'KitchenAid', 'Batidora de pie con tazón de acero inoxidable', 200.00, 12);

INSERT INTO productos
VALUES (10456789, 'Cafetera', 'Breville', 'Cafetera programable con molinillo integrado', 180.00, 22);

INSERT INTO productos
VALUES (10293847, 'Aspiradora', 'Dyson', 'Aspiradora sin bolsa con tecnología de succión potente', 300.00, 15);

INSERT INTO productos
VALUES (10789345, 'Plancha de Vapor', 'Rowenta', 'Plancha de vapor con suela de cerámica', 70.00, 20);

INSERT INTO productos
VALUES (10654321, 'Robot Aspirador', 'iRobot', 'Robot aspirador con mapeo inteligente de la casa', 400.00, 10);

INSERT INTO productos
VALUES (10329876, 'Freidora de Aire', 'Philips', 'Freidora de aire sin aceite con capacidad de 5.8 litros', 150.00, 18);

INSERT INTO productos
VALUES (10834926, 'Cocina de Gas', 'GE', 'Cocina de gas con horno y encendido eléctrico', 600.00, 10);

INSERT INTO productos
VALUES (10197654, 'Ventilador de Torre', 'Honeywell', 'Ventilador de torre con control remoto', 80.00, 25);

INSERT INTO productos
VALUES (10543219, 'Calentador de Agua', 'Rheem', 'Calentador de agua a gas con capacidad de 50 litros', 400.00, 8);

INSERT INTO productos
VALUES (10678934, 'Exprimidor de Jugos', 'Black & Decker', 'Exprimidor de jugos eléctrico con sistema antigoteo', 40.00, 30);

INSERT INTO productos
VALUES (10923456, 'Tostadora', 'Cuisinart', 'Tostadora de acero inoxidable con 4 ranuras', 60.00, 20);

INSERT INTO productos
VALUES (10134876, 'Máquina de Pan', 'Hamilton Beach', 'Máquina de hacer pan con temporizador programable', 100.00, 15);

INSERT INTO productos
VALUES (10765498, 'Barbacoa Eléctrica', 'Weber', 'Barbacoa eléctrica para uso en interiores y exteriores', 250.00, 12);

INSERT INTO productos
VALUES (10456987, 'Máquina de Hielo', 'Frigidaire', 'Máquina de hielo portátil con capacidad de 26 libras por día', 180.00, 10);

INSERT INTO productos
VALUES (10987612, 'Robot de Cocina', 'Moulinex', 'Robot de cocina multifunción con capacidad de cocinar al vapor', 300.00, 8);

select*from productos
/*Obtener todos los productos con un precio mayor a $200.*/
SELECT * FROM productos WHERE CAST(precio AS DECIMAL(10,2)) > 200.00;

/*Obtener todos los productos con una cantidad menor o igual a 20.*/
SELECT * FROM productos WHERE Cantidad <= 20;

/*Obtener el conteo total de productos para cada marca.*/
SELECT Marca, COUNT(*) AS Total_Productos FROM productos GROUP BY Marca;

/*Obtener el producto con el precio más alto.*/
SELECT * FROM productos WHERE precio = (SELECT MAX(precio) FROM productos);

/*Obtener todos los productos con 'nevera' en su nombre.*/
SELECT * FROM productos WHERE Nombre LIKE '%Refrigerador%';

/*Obtener el precio promedio de los productos.*/
SELECT AVG(CAST(precio AS DECIMAL(10,2))) AS Precio_Promedio FROM productos;

/*Obtener todos los productos con una descripción que contenga 'acero inoxidable'.*/
SELECT * FROM productos WHERE Descripcion LIKE '%acero inoxidable%';

/*Obtener todos los productos con un precio entre $100 y $300.*/
SELECT * FROM productos WHERE CAST(precio AS DECIMAL(10,2)) BETWEEN 100.00 AND 300.00;

/*Obtener el producto con la menor cantidad en stock.*/
SELECT * FROM productos WHERE Cantidad = (SELECT MIN(Cantidad) FROM productos);

/*Obtener todos los productos ordenados por su precio de forma descendente.*/
SELECT * FROM productos ORDER BY CAST(precio AS DECIMAL(10,2)) desc;

create table Cliente(
Id_Cliente varchar (255),
Nombre varchar (255),
Direccion varchar(255),
Telefono varchar (12),
Codigo_Postal int);

INSERT INTO Cliente 
VALUES ('A1B2C3D4E5', 'Juan Perez', '123 Calle Principal', '809-123-4567', 12345);

INSERT INTO Cliente
VALUES ('F6G7H8I9J0', 'Maria Gomez', '456 Avenida Secundaria', '829-234-5678', 23456);

INSERT INTO Cliente 
VALUES ('K1L2M3N4O5', 'Luis Rodriguez', '789 Calle Tercera', '849-345-6789', 34567);

INSERT INTO Cliente 
VALUES ('P6Q7R8S9T0', 'Ana Martinez', '101 Avenida Cuarta', '809-456-7890', 45678);

INSERT INTO Cliente 
VALUES ('U1V2W3X4Y5', 'Carlos Lopez', '202 Calle Quinta', '829-567-8901', 56789);

INSERT INTO Cliente 
VALUES ('Z6A7B8C9D0', 'Elena Ramirez', '303 Avenida Sexta', '849-678-9012', 67890);

INSERT INTO Cliente 
VALUES ('E1F2G3H4I5', 'Miguel Sanchez', '404 Calle Septima', '809-789-0123', 78901);

INSERT INTO Cliente 
VALUES ('J6K7L8M9N0', 'Laura Diaz', '505 Avenida Octava', '829-890-1234', 89012);

INSERT INTO Cliente 
VALUES ('O1P2Q3R4S5', 'Pedro Hernandez', '606 Calle Novena', '849-901-2345', 90123);

INSERT INTO Cliente 
VALUES ('T6U7V8W9X0', 'Carmen Ruiz', '707 Avenida Decima', '809-012-3456', 23456);

INSERT INTO Cliente 
VALUES ('Y1Z2A3B4C5', 'Jose Martinez', '808 Calle Once', '829-123-4567', 34567);

INSERT INTO Cliente 
VALUES ('D6E7F8G9H0', 'Patricia Fernandez', '909 Avenida Doce', '849-234-5678', 45678);

INSERT INTO Cliente 
VALUES ('I1J2K3L4M5', 'Jorge Gutierrez', '1010 Calle Trece', '809-345-6789', 56789);

INSERT INTO Cliente 
VALUES ('N6O7P8Q9R0', 'Sofia Torres', '1111 Avenida Catorce', '829-456-7890', 67890);

INSERT INTO Cliente 
VALUES ('S1T2U3V4W5', 'Fernando Morales', '1212 Calle Quince', '849-567-8901', 78901);

INSERT INTO Cliente 
VALUES ('X6Y7Z8A9B0', 'Isabel Soto', '1313 Avenida Dieciseis', '809-678-9012', 89012);

INSERT INTO Cliente 
VALUES ('C1D2E3F4G5', 'Ricardo Vega', '1414 Calle Diecisiete', '829-789-0123', 90123);

INSERT INTO Cliente 
VALUES ('H6I7J8K9L0', 'Angela Castro', '1515 Avenida Dieciocho', '849-890-1234', 12345);

INSERT INTO Cliente 
VALUES ('M1N2O3P4Q5', 'Victor Ramos', '1616 Calle Diecinueve', '809-901-2345', 23456);

INSERT INTO Cliente 
VALUES ('R6S7T8U9V0', 'Carolina Ponce', '1717 Avenida Veinte', '829-012-3456', 34567);
SELECT*FROM Cliente

/*Obtener datos del cliente*/
SELECT Id_Cliente,Nombre FROM Cliente

/*Obtener cliente por inicial de nombre*/
SELECT * FROM Cliente WHERE Nombre LIKE 'C%';


create table Pedidos(
Id_Cliente varchar(255),
Id_Pedidos varchar(255),
Id_Empleados int,
Marca varchar(255),
Producto_Pedido varchar (255),
Fecha date,
Telefono_Cliente varchar(12),
Vendedor varchar (255),
Telefono varchar (12),
);

create table proveedor(
Id_Proveedor varchar (10),
Nombre varchar(255),
Telefono varchar(255),
correo varchar (255),
direccion varchar (255)
);

INSERT INTO proveedor 
VALUES ('P001', 'Kevi Durant', '5551234567' , 'KD@proveedor.com', 'Calle 1, Distrito Nacional');

INSERT INTO proveedor 
VALUES ('P002', 'LeBron James', '5552345678', 'LbJ@proveedor.com', 'Calle 2, Distrito Nacional');

INSERT INTO proveedor 
VALUES ('P003', 'Pedro Pisca', '5553456789', 'PedroPica@proveedor.com', 'Calle 3, San Isidro');

INSERT INTO proveedor 
VALUES ('P004', 'Luis Gonzales', '5554567890', 'lgz@proveedor.com', 'Calle 4, Distrito Nacional');

INSERT INTO proveedor
VALUES ('P005', 'Jose Aramburo', '5555678901', 'JoSB@proveedor.com', 'Calle 5, San Isidro');

INSERT INTO proveedor 
VALUES ('P006', 'Mario Rivera', '5556789012', 'MarioRivers@proveedor.com', 'Calle 6, San Isidro');

INSERT INTO proveedor
VALUES ('P007', 'Yoskar Sarante', '5557890123', 'YosK@proveedor.com', 'Calle 7, San Isidro');

INSERT INTO proveedor
VALUES ('P008', 'Manuel Martinez', '5558901234', 'ManuMartin@proveedor.com', 'Calle 8, San Isidro');

INSERT INTO proveedor 
VALUES ('P009', 'Maria Degaldo', '5559012345', 'MaDelga@proveedor.com', 'Calle 9, Ciudad I');

INSERT INTO proveedor 
VALUES ('P010', 'Joseph Curry', '5550123456', 'JC30@proveedor.com', 'Calle 10, Distrito Nacional');

create table Compra(
Id_empleado varchar(255),
Puesto varchar (255),
Id_Proveedor varchar(255),
Nombre varchar (255),
Direccion varchar (255),
Telefono Varchar(255),
Total int);

create table Venta(
Id_Ventan varchar(255),
Id_Vendedor varchar(255),
Cliente varchar (255),
Id_Producto int,
Cantidad numeric,
Fecha date);
select Nombre from Empleados where Tipo_de_Sangre = 'o+'
sp_spaceused




