drop database if exists APOLO;
create database APOLO;
use APOLO;

create table AgenteSeguros(

	Id_Agente int(3) not null auto_increment primary key,
    Nombre_Agente varchar(60) not null,
    Email varchar(60) not null,
    Contra varchar(60) not null,
    Telefono varchar(60),
    Sexo varchar(30),
    Dir_Oficina varchar(60)

);


create table Contacto(

	Id_Contacto int(3) not null auto_increment primary key,
    Id_Agente int(3),
    Nombre_Contacto varchar(60),
    Correo_Electronico varchar(60),
    Direccion varchar(100),
    Telefono varchar(20),
    Edad int(3),
    Sexo varchar(20),
    Estado_Civil varchar(30),
    Familia varchar(2),
    Polizas_Activas int(3),
    Antecedentes_Financieros varchar(1000),
    Antecedentes_Financieros varchar(1000),
    Antecedentes_Financieros varchar(1000),
    foreign key (Id_Agente) references AgenteSeguros (Id_Agente)
    
);


create table Cita(

	Id_Cita int(3) not null auto_increment primary key,
    Id_Contacto int(3),
    Id_Agente int(3),
    Tipo_Cita varchar(50),
    Fecha date,
    Direccion_Cita varchar(100),
    Proposito_Cita varchar(100),
    Notas_Import varchar(200),
    foreign key (Id_Contacto) references Contacto (Id_Contacto),
    foreign key (Id_Agente) references AgenteSeguros (Id_Agente)

);


create table Ventas(

	Id_Poliza int(3) not null auto_increment primary key,
    Id_Contacto int(3),
    Id_Agente int(3),
	Aseguradora varchar(50),
    Fecha_Venta date,
    Tipo_Pago varchar(60),
    Monto_Pago float(3,2),
    foreign key (Id_Contacto) references Contacto (Id_Contacto),
    foreign key (Id_Agente) references AgenteSeguros (Id_Agente)

);




select * from AgenteSeguros;





use APOLO;
drop procedure if exists GuardaAgente;
delimiter **
create procedure GuardaAgente( in nombreAgen varchar(60), in correoAgen varchar(60), in contraAgen varchar(60))
begin
 

INSERT INTO AgenteSeguros(Nombre_Agente, Email, Contra) 
values(nombreAgen,correoAgen, contraAgen);

end**