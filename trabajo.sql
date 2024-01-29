create database TechSolutions;

use TechSolutions;

create table Cargos(
	id_cargo int auto_increment primary key,
	nombre_cargo varchar(50)
);

create table Departamentos(
	id_departamento int auto_increment primary key,
	nombre_departamento varchar(50)
);

create table Empleados(
	id_empleado int auto_increment primary key,
	nombre_empleado varchar(50),
	apellido_empleado varchar(50),
	salario double,
	fch_inicio date,
	id_departamento int,
	constraint fk_empleado_departamento
	foreign key (id_departamento)
	references Departamentos(id_departamento),
	id_cargo int,
	constraint fk_empleado_cargo
	foreign key (id_cargo)
	references Cargos(id_cargo)
);


create table Proyectos(
	id_proyecto int  auto_increment primary key,
	nombre_proyecto varchar(50)
);

create table Detalles(
	id_detalles_proyecto int auto_increment primary key,
	id_empleado int,
	constraint fk_detalles_empleado
	foreign key (id_empleado)
	references Empleados(id_empleado),
	id_proyecto int,
	constraint fk_detalles_proyecto
	foreign key (id_proyecto)
	references Proyectos(id_proyecto)
);
