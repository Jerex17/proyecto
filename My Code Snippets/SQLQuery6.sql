USE D_D_B_D_#_APELLIDO_2023

CREATE TABLE T�cnicos_26_06_03_23 (Carnet char (5) not null, Nombres varchar (65), Especialidad varchar (40) not null, Tiempo_serv char (7), Celular numeric (12), Correo_electronico varchar (50) );

Alter Table  T�cnicos_26_06_03_23
Add Primary Key (carnet)

Insert Into T�cnicos_26_06_03_23 (Carnet,Nombres,Especialidad,Tiempo_Serv,Celular,Correo_electronico)
Values ('01-RT' , 'Catalino Jim�nez' , 'Agr�nomo' , '5 a�os' , 8093691074 , 'CataMenez@gmail.com')

Insert Into T�cnicos_26_06_03_23 (Carnet,Nombres,Especialidad,Tiempo_Serv,Celular,Correo_electronico)
Values ('02-RT' , 'Dilcia Paliza' , 'Enfermera' , '6 meses' , 8492139852 , 'DilPali@hotmail.com')

Insert Into T�cnicos_26_06_03_23 (Carnet,Nombres,Especialidad,Tiempo_Serv,Celular,Correo_electronico)
Values ('03-RT' , 'David M�rmol' , 'Mec�nico Indust' , '10 a�os' , 8295403300 , 'DaMar@cepva.edu.do')

Insert Into T�cnicos_26_06_03_23 (Carnet,Nombres,Especialidad,Tiempo_Serv,Celular,Correo_electronico)
Values ('04-RT' ,  'Yolanda Quir�s' ,  'Cajera' , '3 meses' ,  8296664444 , 'YolaQui@gmail.com')

Insert Into T�cnicos_26_06_03_23 (Carnet,Nombres,Especialidad,Tiempo_Serv,Celular,Correo_electronico)
Values ('05-RT' , 'Tony Ortiz' , 'Programador' , '1 a�o' ,  8499318477 , 'Tontiz@hotmail.com')

Insert Into T�cnicos_26_06_03_23 (Carnet,Nombres,Especialidad,Tiempo_Serv,Celular,Correo_electronico)
Values ('06-RT' , 'Irma Guti�rrez' , 'Financiera' , '8 a�os' , 8297221111 , 'MaGu@gmail.com')

Insert Into T�cnicos_26_06_03_23 (Carnet,Nombres,Especialidad,Tiempo_Serv,Celular,Correo_electronico)
Values ('07-RT' , 'Pablo B�ez' , 'Electricidad' , '9 meses' , 8096820148 , 'PaBa@hotmail.com')

Insert Into T�cnicos_26_06_03_23 (Carnet,Nombres,Especialidad,Tiempo_Serv,Celular,Correo_electronico)
Values ('08-RT' ,  'Gina Lora' ,  'Maquillista' , '7 a�os' , 8095996151 , 'GiRa@gmail.com')

Insert Into T�cnicos_26_06_03_23 (Carnet,Nombres,Especialidad,Tiempo_Serv,Celular,Correo_electronico)
Values ('09-RT' , 'To�o Herasme' , 'Electr�nica' , '1 mes' , 8496881212 , 'ToMe@hotmail.com')

Insert Into T�cnicos_26_06_03_23 (Carnet,Nombres,Especialidad,Tiempo_Serv,Celular,Correo_electronico)
Values ('10-RT' , 'Rocadis Familia' , 'Cardi�loga' , '15 a�os' , 8094445555 , 'RoCa@gmail.com')

Select * from T�cnicos_26_06_03_23

