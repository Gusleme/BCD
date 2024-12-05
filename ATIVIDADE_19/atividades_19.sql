create database db_consulta;

use db_consulta;

create table tb_medico(
id_medico int primary key auto_increment, 
nome varchar(45),
email varchar(45),
area_atuacao varchar(45),
telefone varchar(45)
);

create table tb_paciente(
id_paciente int primary key auto_increment,
nome varchar(45),
email varchar(45),
dt_consulta Date,
telefone varchar(45),
MEDICO_id_medico int not null,
foreign key (MEDICO_id_medico) references tb_medico(id_medico)
);