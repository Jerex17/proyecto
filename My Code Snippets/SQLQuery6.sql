USE D_D_B_D_#_APELLIDO_2023

CREATE TABLE Técnicos_26_06_03_23 (Carnet char (5) not null, Nombres varchar (65), Especialidad varchar (40) not null, Tiempo_serv char (7), Celular numeric (12), Correo_electronico varchar (50) );

Alter Table  Técnicos_26_06_03_23
Add Primary Key (carnet)

Insert Into Técnicos_26_06_03_23 (Carnet,Nombres,Especialidad,Tiempo_Serv,Celular,Correo_electronico)
Values ('01-RT' , 'Catalino Jiménez' , 'Agrónomo' , '5 años' , 8093691074 , 'CataMenez@gmail.com')

Insert Into Técnicos_26_06_03_23 (Carnet,Nombres,Especialidad,Tiempo_Serv,Celular,Correo_electronico)
Values ('02-RT' , 'Dilcia Paliza' , 'Enfermera' , '6 meses' , 8492139852 , 'DilPali@hotmail.com')

Insert Into Técnicos_26_06_03_23 (Carnet,Nombres,Especialidad,Tiempo_Serv,Celular,Correo_electronico)
Values ('03-RT' , 'David Mármol' , 'Mecánico Indust' , '10 años' , 8295403300 , 'DaMar@cepva.edu.do')

Insert Into Técnicos_26_06_03_23 (Carnet,Nombres,Especialidad,Tiempo_Serv,Celular,Correo_electronico)
Values ('04-RT' ,  'Yolanda Quirós' ,  'Cajera' , '3 meses' ,  8296664444 , 'YolaQui@gmail.com')

Insert Into Técnicos_26_06_03_23 (Carnet,Nombres,Especialidad,Tiempo_Serv,Celular,Correo_electronico)
Values ('05-RT' , 'Tony Ortiz' , 'Programador' , '1 año' ,  8499318477 , 'Tontiz@hotmail.com')

Insert Into Técnicos_26_06_03_23 (Carnet,Nombres,Especialidad,Tiempo_Serv,Celular,Correo_electronico)
Values ('06-RT' , 'Irma Gutiérrez' , 'Financiera' , '8 años' , 8297221111 , 'MaGu@gmail.com')

Insert Into Técnicos_26_06_03_23 (Carnet,Nombres,Especialidad,Tiempo_Serv,Celular,Correo_electronico)
Values ('07-RT' , 'Pablo Báez' , 'Electricidad' , '9 meses' , 8096820148 , 'PaBa@hotmail.com')

Insert Into Técnicos_26_06_03_23 (Carnet,Nombres,Especialidad,Tiempo_Serv,Celular,Correo_electronico)
Values ('08-RT' ,  'Gina Lora' ,  'Maquillista' , '7 años' , 8095996151 , 'GiRa@gmail.com')

Insert Into Técnicos_26_06_03_23 (Carnet,Nombres,Especialidad,Tiempo_Serv,Celular,Correo_electronico)
Values ('09-RT' , 'Toño Herasme' , 'Electrónica' , '1 mes' , 8496881212 , 'ToMe@hotmail.com')

Insert Into Técnicos_26_06_03_23 (Carnet,Nombres,Especialidad,Tiempo_Serv,Celular,Correo_electronico)
Values ('10-RT' , 'Rocadis Familia' , 'Cardióloga' , '15 años' , 8094445555 , 'RoCa@gmail.com')

Select * from Técnicos_26_06_03_23

