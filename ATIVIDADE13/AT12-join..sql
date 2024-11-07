-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS db_restaurante;
USE db_restaurante;

-- Criação da tabela tb_pratos
CREATE TABLE tb_pratos (
    id_prato INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(5,2) NOT NULL,
    categoria VARCHAR(50),
    tempo_preparo INT, -- tempo de preparo em minutos
    data_disponivel DATE
);

-- Criação da tabela tb_ingredientes
CREATE TABLE tb_ingredientes (
    id_ingrediente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    quantidade DECIMAL(5,2), -- quantidade em gramas ou unidades
    unidade VARCHAR(10),
    fornecedor VARCHAR(100),
    validade DATE,
    id_prato INT,
    FOREIGN KEY (id_prato) REFERENCES tb_pratos(id_prato) ON DELETE CASCADE
);

-- Inserindo dados na tabela tb_pratos
INSERT INTO tb_pratos (nome, descricao, preco, categoria, tempo_preparo, data_disponivel) VALUES
('Espaguete Carbonara', 'Espaguete com molho à base de ovo, queijo e bacon', 35.90, 'Massa', 20, '2024-11-01'),
('Risoto de Cogumelos', 'Risoto cremoso com mix de cogumelos', 42.50, 'Risoto', 25, '2024-11-01'),
('Frango à Parmegiana', 'Filé de frango empanado com molho de tomate e queijo', 29.90, 'Prato Principal', 30, '2024-11-01'),
('Salmão Grelhado', 'Filé de salmão grelhado com ervas', 55.00, 'Peixe', 25, '2024-11-01'),
('Lasanha Bolonhesa', 'Lasanha com molho bolonhesa e queijo', 38.00, 'Massa', 40, '2024-11-01'),
('Pizza Margherita', 'Pizza de queijo e manjericão', 32.00, 'Pizza', 15, '2024-11-01'),
('Pizza Calabresa', 'Pizza com calabresa e cebola', 34.00, 'Pizza', 15, '2024-11-01'),
('Filet Mignon ao Molho Madeira', 'Filet Mignon com molho madeira e champignon', 62.00, 'Carne', 35, '2024-11-01'),
('Nhoque ao Sugo', 'Nhoque com molho de tomate fresco', 27.50, 'Massa', 20, '2024-11-01'),
('Feijoada Completa', 'Feijoada tradicional com acompanhamentos', 45.00, 'Prato Brasileiro', 60, '2024-11-01'),
('Bacalhau à Portuguesa', 'Bacalhau assado com batatas e cebolas', 68.00, 'Peixe', 45, '2024-11-01'),
('Sopa de Cebola', 'Sopa de cebola gratinada com queijo', 18.00, 'Sopa', 15, '2024-11-01'),
('Sushi Variado', 'Seleção de sushis', 50.00, 'Japonês', 25, '2024-11-01'),
('Costelinha Barbecue', 'Costelinha de porco com molho barbecue', 48.00, 'Carne', 40, '2024-11-01'),
('Tacos Mexicanos', 'Tacos com carne, queijo e guacamole', 30.00, 'Mexicano', 20, '2024-11-01');

-- Inserindo dados na tabela tb_ingredientes
INSERT INTO tb_ingredientes (nome, quantidade, unidade, fornecedor, validade, id_prato) VALUES
('Espaguete', 200, 'g', 'Fornecedor A', '2024-12-01', 1),
('Ovo', 2, 'unidade', 'Fornecedor B', '2024-11-10', 1),
('Queijo Parmesão', 50, 'g', 'Fornecedor C', '2024-11-20', 1),
('Bacon', 30, 'g', 'Fornecedor D', '2024-11-15', 1),
('Arroz Arborio', 150, 'g', 'Fornecedor E', '2024-12-01', 2),
('Cogumelos', 100, 'g', 'Fornecedor F', '2024-11-20', 2),
('Frango', 200, 'g', 'Fornecedor G', '2024-11-10', 3),
('Queijo Mussarela', 50, 'g', 'Fornecedor H', '2024-11-20', 3),
('Molho de Tomate', 100, 'ml', 'Fornecedor I', '2024-11-15', 3),
('Salmão', 150, 'g', 'Fornecedor J', '2024-12-01', 4),
('Ervas Finas', 5, 'g', 'Fornecedor K', '2024-11-20', 4),
('Massa para Lasanha', 200, 'g', 'Fornecedor L', '2024-12-01', 5),
('Queijo Prato', 100, 'g', 'Fornecedor M', '2024-11-25', 5),
('Queijo Gouda', 100, 'g', 'Fornecedor M', '2024-11-25', 6),
('Calabresa', 80, 'g', 'Fornecedor N', '2024-12-10', 7),
('Cebola', 50, 'g', 'Fornecedor O', '2024-11-30', 7),
('Massa de Pizza', 200, 'g', 'Fornecedor P', '2024-11-25', 6),
('Manjericão', 5, 'g', 'Fornecedor Q', '2024-11-30', 6),
('Filet Mignon', 200, 'g', 'Fornecedor R', '2024-11-20', 8),
('Molho Madeira', 50, 'ml', 'Fornecedor S', '2024-11-15', 8),
('Tomate', 100, 'g', 'Fornecedor T', '2024-11-10', 9),
('Batata', 200, 'g', 'Fornecedor U', '2024-11-30', 11),
('Feijão Preto', 150, 'g', 'Fornecedor V', '2024-11-25', 10),
('Costela de Porco', 250, 'g', 'Fornecedor W', '2024-12-01', 14),
('Molho Barbecue', 50, 'ml', 'Fornecedor X', '2024-11-15', 14),
('Tortilha', 50, 'g', 'Fornecedor Y', '2024-12-05', 15),
('Guacamole', 30, 'g', 'Fornecedor Z', '2024-11-12', 15),
('Arroz', 100, 'g', 'Fornecedor AA', '2024-12-01', NULL),
('Cenoura', 50, 'g', 'Fornecedor BB', '2024-11-15', NULL),
('Alho', 5, 'g', 'Fornecedor CC', '2024-12-01', NULL),
('Gengibre', 5, 'g', 'Fornecedor DD', '2024-12-01', NULL),
('Alface', 50, 'g', 'Fornecedor EE', '2024-12-05', NULL);

select*from tb_ingredientes
join tb_pratos;

-- Exercicio 01	
select preco, tempo_preparo
from tb_pratos;

-- Exercicio 02
select tb_pratos.nome, tb_ingredientes.nome
from tb_pratos
join tb_ingredientes
on tb_pratos.id_prato = tb_ingredientes.id_prato
where tb_pratos.nome = "Espaguete Carbonara";

-- Exercicio 03
select tb_pratos.nome, tb_ingredientes.nome, tb_ingredientes.quantidade
from tb_pratos
left join tb_ingredientes
on tb_ingredientes.id_prato = tb_pratos.id_prato;

-- Exercicio 04
select nome, preco, tempo_preparo
from tb_pratos
where preco > 40 and tempo_preparo < 30;

-- Exercicio 05
select tb_pratos.nome, tb_ingredientes.nome
from tb_pratos
join tb_ingredientes
on tb_pratos.id_prato = tb_ingredientes.id_prato
where tb_ingredientes.id_prato is null;

-- Exercicio 06
select nome, validade
from tb_ingredientes
where validade <= '2024-11-15';

-- Exercicio 07
select categoria,
avg (preco) as preco_medio
from tb_pratos
group by categoria;


-- Exercicio 08
select nome,
sum(tb_ingredientes.quantidade) 
from tb_ingredientes
group by nome;

-- Exercicio 09
select tb_pratos.nome, tb_ingredientes.nome
from tb_pratos
join tb_ingredientes
on tb_pratos.id_prato = tb_ingredientes.id_prato
where tb_pratos.nome like 'Pizza%' and tb_ingredientes.nome like 'Queijo%';

-- Exercicio 10
select categoria, max(preco) as maior from tb_pratos
 group by tb_pratos.categoria;















-- Exercicio 09
select tb_pratos.nome, tb_ingredientes.nome
from tb_pratos
join tb_ingredientes





