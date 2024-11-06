USE D_D_B_D_#_APELLIDO_2023
GO
Create Table #_Carpinteros_24_02_23 (CodigoCarp Numeric Not null, NombresCarp Varchar (40), HerramientasCarp Varchar (60), MaterialesCarp Varchar (55), Edad Integer)

Alter Table #_Carpinteros_24_02_23
Add Primary Key (CodigoCarp)

Drop Table #_Carpinteros_24_02_23

USE D_D_B_D_#_APELLIDO_2023
GO
Create Table Frutera_#_24_02_23 (NombresFrutas Varchar (70 ) Not null, CantidadFrutas INT, PrecioFrutas Float, TamañoFrutas Date)

Alter Table Frutera_#_24_02_23
Add Primary Key (NombresFrutas)

Drop Table Frutera_#_24_02_23