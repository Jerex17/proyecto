USE D_D_B_D_#_APELLIDO_2023

Create Table Licitación_26_28_02_23
(#_de_Orden Numeric not null, Manufactura varchar(50), Asignación Numeric, Fechas Datetime, Importe float);

Alter Table Licitación_26_28_02_23
Add Primary Key (#_de_Orden)

SET DATEFORMAT 'DMY'
INSERT INTO Licitación_26_28_02_23 (#_de_Orden,Manufactura,Asignación,Fechas,Importe)
VALUES (111,'Como sardinas en lata',79,'17-02-2023',1050);

SET DATEFORMAT 'DMY'
INSERT INTO Licitación_26_28_02_23 (#_de_Orden, Manufactura, Asignación, Fechas, Importe)
VALUES (222,' El año de la Pera ',125,'14-02-2023',2345);

SET DATEFORMAT 'DMY'
INSERT INTO Licitación_26_28_02_23 (#_de_Orden, Manufactura, Asignación, Fechas, Importe)
VALUES (333,'Mi media Naranja',240,'22-02-2023',3458);

SET DATEFORMAT 'DMY'
INSERT INTO Licitación_26_28_02_23 (#_de_Orden, Manufactura, Asignación, Fechas, Importe)
VALUES (444,'Tómalo o Déjalo',95,'23-02-2023',1735);

SET DATEFORMAT 'DMY'
INSERT INTO Licitación_26_28_02_23 (#_de_Orden, Manufactura, Asignación, Fechas, Importe)
VALUES (555,'Me Importa un Comino',311,'24-02-2023',4632);

SET DATEFORMAT 'DMY'
INSERT INTO Licitación_26_28_02_23 (#_de_Orden, Manufactura, Asignación, Fechas, Importe)
VALUES (666,'Con las manos en la masa',60,'20-02-2023',955);

SET DATEFORMAT 'DMY'
INSERT INTO Licitación_26_28_02_23 (#_de_Orden, Manufactura, Asignación, Fechas, Importe)
VALUES (777,'Una Papa Caliente',200,'28-02-2023',2890);

Select * from Licitación_26_28_02_23;