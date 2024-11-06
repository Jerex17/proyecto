USE D_D_B_D_#_APELLIDO_2023
GO
CREATE TABLE Repartidores_17_04_2023 (Numeros_26 Numeric, Admitir_26 varchar (35), Localizaci�n_26 varchar (45), Telefonos_26 Varchar (15) not null, 
Cancelar_26 float, Mensajeros_26 varchar (20), Horarios_26 char (8), primary key(Telefonos_26));

INSERT INTO Repartidores_17_04_2023
VALUES (5 , 'Jos� Fran' , '4ta esquina rambo #10' , '809-665-8902' , 900 , 'Pedro' , '11:50 AM');

INSERT INTO Repartidores_17_04_2023
VALUES (6 , 'M�nica Campos' , 'Costa blanca #47' , '829-221-1645' , 1200.75 , 'Pedro' , '12:30 PM');

INSERT INTO Repartidores_17_04_2023
VALUES (7 , 'Nenei Barcel�' , 'Tongo Lele #100' , '809-420-8899' , 750.25 , 'Chepe' , '10:15 AM');

INSERT INTO Repartidores_17_04_2023
VALUES (8 , 'Beato Saul' , 'Cuento cuento #29' , '849-3320202' , 1200.75 , 'Neno' , '9:25 AM');

INSERT INTO Repartidores_17_04_2023
VALUES (9 , 'Andr�s Nilo' , 'Canto ma�ana #65' , '829-689-3731' , 1200.75 , 'Chepe' , '6:10 PM');

INSERT INTO Repartidores_17_04_2023
VALUES (10 , 'Consuelo' , 'La canita al aire #38' , '809-539-5566' , 1000.50 , 'Neno' , '7:00 PM');

INSERT INTO Repartidores_17_04_2023
VALUES (11 , 'Nenei Barcel�' , 'Altagracia #05' , '809-228-4070' , 2115.40 , 'Pedro' , '9:45 PM');

INSERT INTO Repartidores_17_04_2023
VALUES (12 , 'Filomena P�ez' , 'Don Juan #89' , '829-999-9999' , 845.15 , 'Chepe' , '11:49 PM');

INSERT INTO Repartidores_17_04_2023
VALUES (13 , 'Nicolas' , 'Francia #105' , '809-577-1221' , 2610.4 , 'Neno' , '11:49 PM');

INSERT INTO Repartidores_17_04_2023
VALUES (14 , 'C�ndida Susi' , 'Caonan #24' , '829-333-0987' , 1587 , 'Pedro' , '11:49 PM');

SELECT * FROM Repartidores_17_04_2023
SELECT Numeros_26, Localizaci�n_26, Telefonos_26 FROM Repartidores_17_04_2023 WHERE 
Telefonos_26='829-999-9999';
SELECT * FROM Repartidores_17_04_2023 WHERE Mensajeros_26='Pedro';
SELECT Numeros_26, Telefonos_26, Mensajeros_26 FROM Repartidores_17_04_2023 WHERE
Localizaci�n_26='Costa blanca #47';
SELECT * FROM Repartidores_17_04_2023 WHERE Horarios_26='11:49 PM';
SELECT Admitir_26, Cancelar_26, Horarios_26 FROM Repartidores_17_04_2023 WHERE
Numeros_26='10';
SELECT * FROM Repartidores_17_04_2023 WHERE Cancelar_26='1200.75';
SELECT * FROM Repartidores_17_04_2023 WHERE Admitir_26='Nenei Barcel�';
SELECT Cancelar_26, Localizaci�n_26, Numeros_26 FROM Repartidores_17_04_2023 WHERE
Horarios_26='11:50 AM';