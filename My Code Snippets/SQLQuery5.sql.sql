Use D_D_B_D_#_Apellido_2023

Create Table Consumidores_28_02_23 (Patente_Consu char(8) not null, Apellido_Consu varchar(30),
Ubicaci�n_Consu varchar(60), Ciudad_Consu varchar(40), Tel�fono_Consu numeric)

Alter Table Consumidores_28_02_23
Add Primary Key (Patente_Consu)

INSERT INTO Consumidores_28_02_23 (Patente_Consu, Apellido_Consu, Ubicaci�n_Consu, Ciudad_Consu, Tel�fono_Consu)
VALUES ('00-11-TT ',' L�pez ',' La Toronja #105',' Santiago ', 8092551010);

INSERT INTO Consumidores_28_02_23 (Patente_Consu, Apellido_Consu, Ubicaci�n_Consu, Ciudad_Consu, Tel�fono_Consu)
VALUES ('03-35-YY ',' P�rez ',' Trinitario #15',' Santo Domingo', 8293337896);

INSERT INTO Consumidores_28_02_23 (Patente_Consu, Apellido_Consu, Ubicaci�n_Consu, Ciudad_Consu, Tel�fono_Consu)
VALUES ('11-19-PP ','Hern�ndez ','La Quinta 22',' Distrito Nacional ', 8289701254);

INSERT INTO Consumidores_28_02_23 (Patente_Consu, Apellido_Consu, Ubicaci�n_Consu, Ciudad_Consu, Tel�fono_Consu)
VALUES ('04-88-ZZ','Bello',' La Francia #89','La Vega', 8495468607);

INSERT INTO Consumidores_28_02_23 (Patente_Consu, Apellido_Consu, Ubicaci�n_Consu, Ciudad_Consu, Tel�fono_Consu)
VALUES ('22-44-XX ','Garc�a','Benito #53','Bonao', 8096668888);

INSERT INTO Consumidores_28_02_23 (Patente_Consu, Apellido_Consu, Ubicaci�n_Consu, Ciudad_Consu, Tel�fono_Consu)
VALUES ('33-00-RR','Duran','Los Guandules #225','San Pedro',8099990000);

INSERT INTO Consumidores_28_02_23 (Patente_Consu, Apellido_Consu, Ubicaci�n_Consu, Ciudad_Consu, Tel�fono_Consu)
VALUES ('44-44-HH','Luna','4ta con Cinco #38','Bani', 8292002020);

Select * from Consumidores_28_02_23;3