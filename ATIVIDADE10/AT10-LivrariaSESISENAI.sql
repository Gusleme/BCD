-- criando banco de dados
create database db_livraria;
-- usando  banco de dados cliente
use db_livraria;

create table  tb_cliente(
id_cliente int primary key not null auto_increment,
nome varchar(45) not null,
cpf varchar(11) not null,
rg varchar(11) not null,
email varchar(45) not null
);
create table tb_endeco_cliente(
id_endereco int primary key not null auto_increment,
rua varchar(45) not null,
numero int not null,
cidade varchar(45) not null,
estado varchar(45) not null,
CLIENTE_id_cliente int not null,
foreign key (CLIENTE_id_cliente) references tb_cliente(id_cliente)
);
create table tb_telefone_cliente(
id_telefone int primary key not null auto_increment,
telefone varchar(45),
CLIENTE_id_cliente int not null,
foreign key (CLIENTE_id_cliente) references tb_cliente(id_cliente)
);
create table tb_pedido(
id_pedido int primary key not null auto_increment,
valor decimal(10,2) not null,
dia_hora date not null,
 CLIENTE_id_cliente int not null,
 foreign key (CLIENTE_id_cliente) references tb_cliente(id_cliente)
);
ALTER table tb_pedido
change column id_cliente id_pedido int;

alter table tb_pedido
change column Id_pedido id_pedido int;

create table tb_item_pedido(
quantidade int not null,
valor decimal(10,2) not null,
PEDIDO_id_pedido int not null,
foreign key (PEDIDO_id_pedido) references tb_pedido(id_pedido),
LIVRO_id_livro int not null,
foreign key (LIVRO_id_livro) references tb_livro(id_livro)
);
create table tb_livro(
id_livro int primary key not null auto_increment,
titulo varchar(45) not null,
categoria varchar(45) not null,
isbn varchar(13) not null,
ano  date not null,
valor decimal(10,2) not null,
autor varchar(45) not null,
EDITORA_id_editora int not null,
foreign key (EDITORA_id_editora) references tb_editora(id_editora)
);
create table tb_editora(
id_editora int primary key not null auto_increment,
nome_editora varchar(45) not null,
nome_contato varchar(45) not null,
email varchar(45) not null,
contato varchar(45) not null
);
create table tb_estoque(
quantidade int not null,
LIVRO_id_livro int,
foreign key (LIVRO_id_livro) references tb_livro(id_livro)
);
