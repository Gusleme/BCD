create database db_loja;

use db_loja;

create table tb_vendas (
id_nf int,
id_item int,
cod_prod int,
valor_unit decimal (4,2),
quantidade int,
desconto int
);

insert into tb_vendas (id_nf, id_item, cod_prod, valor_unit, quantidade, desconto)
values
(1,1,1,25.00,10,5),
(1,2,2,13.50,3,null),
(1,3,3,15.00,2,null),
(1,4,4,10.00,1,null),
(1,5,5,30.00,1,null),
(2,1,3,15.00,4,null),
(2,2,4,10.00,4,null),
(2,3,5,30.00,7,null),
(3,1,1,25.00,5,null),
(3,2,4,10.00,4,null),
(3,1,5,30.00,5,null),
(3,4,2,13.50,7,null),
(4,1,5,30.00,10,15),
(4,2,4,10.00,12,5),
(4,3,1,25.00,13,5),
(4,1,3,15.00,3,null),
(5,2,5,30.00,6,null),
(6,1,1,25.00,22,15),
(6,2,3,15.00,25,20),
(7,1,1,25.00,10,3),
(7,2,2,13.50,10,4),
(7,3,3,15.00,10,4),
(7,4,5,30.00,10,1);


/*ATIVIDADE 01*/
select id_nf, id_item, cod_prod, valor_unit
from tb_vendas
where desconto is not null;


/*ATIVIDADE 02*/
select id_nf, id_item, cod_prod, valor_unit
from tb_vendas
where desconto > 0;

/*ATIVIDADE 03*/
update tb_vendas set desconto = 0
where desconto is null;

/*ATIVIDADE 04*/
select id_nf, id_item, cod_prod, valor_unit * quantidade 
as valor_total,desconto,valor_unit-(valor_unit*(desconto/100)) 
as valor_vendido
from tb_vendas;

/*ATIVIDADE 05*/
select id_nf,
sum(quantidade*valor_unit)
as valor_total
from tb_vendas
group by id_nf
order by valor_total desc;

/*ATIVIDADE 06*/
select id_nf,valor_unit -(valor_unit*(desconto/100)) as valor_vendido,
sum(valor_unit*quantidade) as valor_total
from tb_vendas
group by id_nf
order by id_nf desc;

/*ATIVIDADE 07*/
select cod_prod,
max(quantidade)
from tb_vendas
group by cod_prod
order by quantidade desc
limit 1;

/*ATIVIDADE 08*/
select id_nf, cod_prod
from tb_vendas
where quantidade > 10
group by id_nf,cod_prod
order by id,nf,cod_prod;

/*ATIVIDADE 09*/ 
select id_nf,
sum(quantidade * valor_unit) as valor_total
from tb_vendas
group by id_nf
having valor_total > 500
order by valor_total desc;

/*ATIVIDADE 10*/
select cod_prod,
avg(desconto)
as media
from tb_vendas
group by cod_prod;

/*ATIVIDADE 11*/
select cod_prod,
min(desconto) as menor,
max(desconto) as maior,
avg(desconto) as media
from tb_vendas
group by cod_prod;

/*ATIVIDADE 12*/
select id_nf,
count(id_item) as quantidade
from tb_vendas
where quantidade  > 3
group by id_nf; 





