Drop schema if exists examenes;
create schema if not exists examenes;
use examenes;

/**
	tabla PERSONAS
		PK i_per_id
*/
Drop table if exists personas;
Create table if not exists personas (
  i_per_id int not null auto_increment,
  c_dni varchar(8) default null,
  c_nombres varchar(40) default null,
  c_correo varchar(40) default null,
  c_telefono varchar(20) default null,
  c_direccion varchar(50) default null,
  primary key (i_per_id)
  ) engine=InnoDB default charset=utf8mb4;

INSERT INTO PERSONAS
    (i_per_id, c_dni, c_nombres, c_correo, c_telefono, c_direccion)
VALUES 
(1,'20202020','LEONARDO MARTINEZ','leonardo.martinez@gmail.com','1122334455', 'San Juan 123'),
(2,'21212121','MARTA RODRIGUEZ','marta.rodriguez@gmail.com','1133445566', 'Estevan echeverria 234'),
(3,'22232425','ROSALBA AGUILERA','rosalba.aguilera@gmail.com','1144556633', 'Saldivar mara  1'),
(4,'12234556','ANDREA AYALA','andrea.ayala@gmail.com','1155221144', 'Calle 123'),
(5,'15543221','CAMILA BRANDAN','camila.brandan@gmail.com','1166554411', 'Calle 124'),
(6,'12141513','CARLOS GOMEZ','carlos.gomez@gmail.com','1123321123', 'Calle 125'),
(7,'12345678','ESTABAN BELEN','estaban.belen@gmail.com','1145665411', 'Calle 126'),
(8,'12345665','GUSTAVO DIAZ','gustavo.diaz@gmail.com','12345678912', 'Calle 127'),
(9,'12332112','IVAN GONZALEZ','ivan.gonzalez@gmail.com','258741258', 'Calle 128'),
(10,'22222222','RODRIGO VALDEZ','rodrigo.valdez@gmail.com','12032001', 'Calle 129'),
(11,'11111111','PROFESOR MODELO','profesor.modelo@gmail.com','1201254120', 'Calle 130'),
(12,'45429596','MAXIMILIANO DIAZ','maximiliano.diaz@gmail.com','1122332278', 'Calle 131'),
(13,'45827452','JUAN ALLIENDES','juan.alliendes@gmail.com','1122334227', 'Calle 132'),
(14,'45767147','MAXIMILIANO AGUILERA','maximiliano.aguilera@gmail.com','1122331355', 'Calle 133'),
(15,'45398089','ANDREA AYALA','andrea.ayala@gmail.com','1122338257', 'Calle 134'),
(16,'45913907','CAMILA BRANDAN','camila.brandan@gmail.com','1122331688', 'Calle 135'),
(17,'45753192','FLORENCIA GOMEZ','florencia.gomez@gmail.com','1122331198', 'Calle 136'),
(18,'45335862','CRISTINA BELEN','cristina.belen@gmail.com','1122332097', 'Calle 137'),
(19,'45742216','BRENDA GUANUCO','brenda.guanuco@gmail.com','1122338775', 'Calle 138'),
(20,'45127385','IVAN GONZALEZ','ivan.gonzalez@gmail.com','1122336644', 'Calle 139'),
(21,'45204817','ADRIANO VALDEZ','adriano.valdez@gmail.com','1122334851', 'Calle 140'),
(22,'45410395','MYA NOBLE','mya.noble@gmail.com','1122336987', 'Calle 141'),
(23,'45854873','TOMAS FIRME','tomas.firme@gmail.com','1122333067', 'Calle 142'),
(24,'45345712','MAITENA PEREYRA','maitena.pereyra@gmail.com','1122336731', 'Calle 143'),
(25,'45286287','SOFIA CASAL','sofia.casal@gmail.com','1122332338', 'Calle 144'),
(26,'45332959','MARTIN ESCOBAR','martin.escobar@gmail.com','1122333997', 'Calle 145'),
(27,'45133410','ALEJANDRO UTZ','alejandro.utz@gmail.com','1122334270', 'Calle 146'),
(28,'45790373','LUCIANO NESTARES','luciano.nestares@gmail.com','1122334675', 'Calle 147'),
(29,'45630386','CELESTE CARRIZO','celeste.carrizo@gmail.com','1122337747', 'Calle 148'),
(30,'45890764','DANA ESCOBAR','dana.escobar@gmail.com','1122331251', 'Calle 149');


-- --------------------------------------------


    
/**
	tabla GRADOS
		PK i_grado_id
*/
Drop table if exists grados;
Create table if not exists grados (
  i_grado_id int not null auto_increment,
  c_descripcion varchar(50) default null,
  c_estado char(1) default null,
  primary key (i_grado_id)
  ) engine=InnoDB default charset=utf8mb4;

INSERT INTO GRADOS
    (i_grado_id, c_descripcion, c_estado)
VALUES 
(1,'PRIMERO',1),
(2,'SEGUNDO',1),
(3,'TERCERO',1),
(4,'CUARTO',1),
(5,'QUINTO',1),
(6,'SEXTO',1),
(7,'SEPTIMO',1);


-- --------------------------------------------


    
/**
	tabla PERFILES
		PK i_perfil_id
*/
Drop table if exists perfiles;
Create table if not exists perfiles (
  i_perfil_id int not null auto_increment,
  c_descripcion varchar(50) default null,
  c_estado char(1) default null,
  primary key (i_perfil_id)
  ) engine=InnoDB default charset=utf8mb4;

INSERT INTO PERFILES
    (i_perfil_id, c_descripcion, c_estado)
VALUES 
(1,'admin',1),
(2,'docente',1),
(3,'estudiante',1);


-- --------------------------------------------


    
/**
	tabla DOCENTES
		PK i_doc_id
        FK i_perfil_id ---> Perfiles
*/

drop table if exists docentes;
Create table if not exists docentes (
  i_doc_id int not null auto_increment,
  c_codigo varchar(20) default null,
  i_perfil_id int default null, 
  c_estado char(1) default null,
  primary key (i_doc_id),
  index perfil_un1 (i_perfil_id),
  constraint perfil_fk1 foreign key (i_perfil_id) 
      references perfiles(i_perfil_id)
  ) ENGINE=InnoDB default charset=utf8mb4;



INSERT INTO DOCENTES
    (i_doc_id, c_codigo, i_perfil_id, c_estado)
VALUES 
(1,'LEONARDO' ,1, '1'),
(2,'MARTA'    ,2, '1'),
(3,'ROSALBA'  ,2, '1'),
(4,'ANDREA'   ,2, '1'),
(5,'CAMILA'   ,2, '1'),
(6,'CARLOS',2, '1'),
(7,'ESTABAN',2, '1'),
(8,'GUSTAVO',2, '1'),
(9,'IVAN',2, '1'),
(10,'RODRIGO',2, '1'),
(11,'PROFESOR',2, '1');

-- --------------------------------------------
    
/**
	tabla SECCIONES
		PK i_doc_id
        FK i_grado_id ---> GRADOS
*/

drop table if exists secciones;
Create table if not exists secciones (
  i_seccion_id int not null auto_increment,
  c_descripcion varchar(20) default null,
  i_grado_id int default null, 
  c_estado char(1) default null,
  primary key (i_seccion_id),
  index grado_un1 (i_grado_id),
  constraint grado_fk1 foreign key (i_grado_id) 
      references grados (i_grado_id)
  ) engine=InnoDB default charset=utf8mb4;

INSERT INTO SECCIONES
    (i_seccion_id, c_descripcion, i_grado_id, c_estado)
VALUES 
(1,'primera','2', '1'),
(2,'E821','2', '1'),
(3,'E92B','2', '1'),
(4,'E841','4', '1'),
(5,'E842','4', '1'),
(6,'E94b','4', '1'),
(7,'E2T41A','4', '1'),
(8,'Seccion A','5', '1'),
(9,'Sección B','5', '1'),
(10,'Seccion C','5', '1'),
(11,'Sección D','5', '1');

-- --------------------------------------------
    
/**
	tabla CURSOS
		PK i_doc_id
        FK i_doc_id     ---> DOCENTES
        FK i_seccion_id ---> SECCIONES
        FK i_grado_id   ---> GRADOS
*/

Drop table if exists cursos;
Create table if not exists cursos (
  i_curso_id int not null auto_increment,
  c_descripcion varchar(60) default null,
  i_doc_id int default null,
  i_seccion_id int default null,
  i_grado_id int default null,
  c_estado char(1) default null,
  primary key (i_curso_id),
  INDEX docente_un1 (i_doc_id),
  INDEX seccion_un1 (i_seccion_id),
  INDEX grado_un2 (i_grado_id),
  constraint docente_fk1 foreign key (i_doc_id) 
      references docentes (i_doc_id),
  constraint seccion_fk1 foreign key (i_seccion_id) 
      references secciones (i_seccion_id),
  constraint grado_fk2 foreign key (i_grado_id) 
      references grados (i_grado_id)  
  ) engine=InnoDB default charset=utf8 ;

INSERT INTO CURSOS
    (i_curso_id, c_descripcion, i_doc_id, i_seccion_id, i_grado_id, c_estado)
VALUES 
(1,'Matematica 2',4, 2, 2, '1'),
(2,'Historia 2',6, 2, 2, '1'),
(3,'Lengua 2',2, 2, 2, '1'),
(4,'Matematica 2',4, 3, 2, '1'),
(5,'Historia 2',6, 3, 2, '1'),
(6,'Lengua 2',2, 3, 2, '1'),
(7,'NTICX',7, 4, 4, '1'),
(8,'NTICX',7, 5, 4, '1'),
(9,'NTICX',7, 6, 4, '1'),
(10,'Matematica 4',4, 4, 4, '1'),
(11,'Laboratorio de Programación',11, 7, 4, '1'),
(12,'Matematica 5',4, 8, 5, '1'),
(13,'Historia 5',6, 8, 5, '1'),
(14,'Quimica 5',3, 8, 5, '1');

-- --------------------------------------------
    
/**
	tabla USUARIOS
		PK i_doc_id
        FK i_per_id     ---> PERSONAS
        FK i_perfil_id  ---> PERFILES
*/

Drop table if exists usuarios;
Create table if not exists usuarios (
  i_us_id int not null auto_increment,
  c_usuario varchar(40) not null,
  c_password varchar(40) not null,
  i_per_id int not null,
  i_perfil_id int not null,
  c_estado varchar(5) null,
  primary key (i_us_id),
  INDEX persona_un1 (i_per_id),
  INDEX perfil_un2 (i_perfil_id),
  constraint persona_fk1 foreign key (i_per_id) 
      references personas (i_per_id),  
  constraint perfil_fk2 foreign key (i_perfil_id) 
      references perfiles (i_perfil_id)
  ) engine=InnoDB default charset=utf8mb4;
  
INSERT INTO USUARIOS
    (i_us_id, c_usuario, c_password, i_per_id, i_perfil_id, c_estado)
VALUES 
(1,'MAXIMILIANO','123',12, 3, '1'),
(2,'JUAN','123',13, 3, '1'),
(3,'MAXIMILIANO','123',14, 3, '1'),
(4,'ANDREA','123',15, 3, '1'),
(5,'CAMILA','123',16, 3, '1'),
(6,'FLORENCIA','123',17, 3, '1'),
(7,'CRISTINA','123',18, 3, '1'),
(8,'BRENDA','123',19, 3, '1'),
(9,'IVAN','123',20, 3, '1'),
(10,'ADRIANO','123',21, 3, '1'),
(11,'MYA','123',22, 3, '1'),
(12,'TOMAS','123',23, 3, '1'),
(13,'MAITENA','123',24, 3, '1'),
(14,'SOFIA','123',25, 3, '1'),
(15,'MARTIN','123',26, 3, '1'),
(16,'ALEJANDRO','123',27, 3, '1'),
(17,'LUCIANO','123',28, 3, '1'),
(18,'CELESTE','123',29, 3, '1'),
(19,'DANA','123',30, 3, '1');

-- --------------------------------------------
    





    

