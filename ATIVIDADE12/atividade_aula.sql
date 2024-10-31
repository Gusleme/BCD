drop database db_senai;

create database if not exists db_senai;

use db_senai;

create table if not exists tb_curso (
id_curso int primary key auto_increment,
nome_curso varchar(30) not null unique,
carga_horaria int unsigned,
ano year
);

insert into tb_curso (nome_curso, carga_horaria, ano) values
('engenharia de software', 360, 2022),
('administração', 400, 2021),
('medicina', 360, null),
('direito', null, null),
('arquitetura',420,2019),
('psicologia', 480, 2023),
('biomedicina', null, 2021),
('educação física', 360, 2022),
('ciência da computação', 480, 2020),
('engenharia civil',400, 2018),
('farmácia',400, 2022),
('veterinaria', 500,null),
('design gráfico', 360, 2023),
('contabilidade', 400, 2019),
('gestão de recursos humanos', 360, 2021),
('sistema de informação',480,2022),
('engenharia elétrica',400,2020),
('marketing',360,2021),
('turismo', 320,2023),
('ciência biológicas',420,2019);

desc tb_curso;
select*from tb_curso
order by nome_curso desc; 

select nome_curso, ano from tb_curso
order by ano desc;

select nome_curso, ano from tb_curso
where ano = 2020
order by nome_curso;

select nome_curso, ano from tb_curso
where ano >= 2020
order by nome_curso;

select nome_curso, ano from tb_curso
where ano != 2020
order by nome_curso;

select nome_curso, ano from tb_curso
where carga_horaria > 360 and carga_horaria < 500
order by ano;

select nome_curso from tb_curso
where not carga_horaria > 360 or ano = 2018
order by nome_curso;

select nome_curso, ano from tb_curso
where ano is null;

select nome_curso, ano from tb_curso
where ano is not null;

select nome_curso, carga_horaria, ano from tb_curso
where carga_horaria between 400 and 480
order by ano asc, nome_curso desc;

select nome_curso, ano from tb_curso
where ano in(2018, 2020, 2023);

select * from tb_curso
where nome_curso like 'a%';

select * from tb_curso
where nome_curso like '%a';

select * from tb_curso
where nome_curso like '%a%';

select * from tb_curso
where nome_curso not like '%a%';

select* from tb_curso
where nome_curso like 'adm%o';

select*from tb_curso
where nome_curso like 'eng%a__';

select*from tb_curso
where nome_curso like 'dir__to';

select count(*) from tb_curso;
 
 select count(*) from tb_curso
 where carga_horaria < 400;
 
 select max(carga_horaria) from tb_curso;
 
 select max(carga_horaria) from tb_curso
 where ano = 2018;
 
 select min(carga_horaria) from tb_curso
 where ano = 2020;
 
 select sum(carga_horaria) from tb_curso
 where ano = 2021;
 
 select avg(carga_horaria) as media
 from tb_curso
 where ano = 2023;
 
 select carga_horaria as carga, count(*) as contagem
 from tb_curso
 group by carga_horaria
 order by carga_horaria;
 
 select carga_horaria as carga, count(*) as contagem
 from tb_curso
 where ano > 2019
 group by carga_horaria
 having carga_horaria (select avg (carga_horaria) from tb_curso)
 order by carga_horaria;
 