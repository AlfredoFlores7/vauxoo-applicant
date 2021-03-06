-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
id smallint PRIMARY KEY not null,
first_name varchar(50),
last_name varchar(50)
id_deparment smallint references employee_department(id)
);


CREATE TABLE employee_department (
id smallint PRIMARY KEY not null,
name varchar(50),
descripcion varchar(50)

);


insert into employee_department values (100,'RH', 'Recursos Humanos');
insert into employee_department values (200,'RF', 'Recursos Financieros');
insert into employee_department values (300,'P', 'Produccion');
insert into employee_department values (400,'Admin', 'Administracion');
insert into employee_department values (500,'Marketing', 'Publicidad');
insert into employee_department values (600,'In', 'Intendencia');


insert into employee values (1,'Rodrigo', 'Perez', 100);
insert into employee values (2,'Laura', 'Sosa', 300);
insert into employee values (3,'Pamela', 'Sanchez', 500);
insert into employee values (4,'Santiago', 'Abarca', 600);


create table empolee_hobby(
id smallint PRIMARY KEY not null,
name varchar(50),
description varchar(50)

);



insert into employee_hobby values(1, "Practicar Deporte", "Practicar deporte o hacer ejercicio");
insert into employee_hobby values(2, "Cocinar", "Preparar alimentos y bebidas");

alter table employee add column id_hobby smallint references employee_hobby(id);


update employee set id_hobby = 1 where name='Rodrigo'
update employee set id_hobby = 2 where name='Santiago'
update employee set id_hobby = 2 where name='Pamela'
update employee set id_hobby = 1 where name='Laura'



alter table employee add column jefe varchar(50) unique;

update employee set jefe = 'Carlos' where name='Rodrigo'
update employee set jefe = 'Carlos' where name='Santiago'
update employee set jefe = 'Andres' where name='Pamela'
update employee set jefe = 'Andres' where name='Laura'

-- ...

