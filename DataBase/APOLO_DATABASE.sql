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
    Nombre_Contacto varchar(60)



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