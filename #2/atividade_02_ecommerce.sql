-- exercicio 1
/* Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. */

create database db_ecommerce;

use db_ecommerce;

-- exercicio 2 Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
preco decimal(8,2),
tamanho varchar(10),
genero char,
primary key(id)
);

-- exercicio 3 Insira nesta tabela no mínimo 8 dados (registros).

insert into tb_produtos (nome, preco, tamanho, genero) values ("Camiseta", 29.99, 'PP', 'M');
insert into tb_produtos (nome, preco, tamanho, genero) values ("Regata", 29.99, 'PP', 'M');
insert into tb_produtos (nome, preco, tamanho, genero) values ("Calça Jeans", 50.99, 'PP', 'M');
insert into tb_produtos (nome, preco, tamanho, genero) values ("Blusa", 130.44, 'PP', 'M');
insert into tb_produtos (nome, preco, tamanho, genero) values ("Jaqueta", 650.00, 'PP', 'M');
insert into tb_produtos (nome, preco, tamanho, genero) values ("Saia", 38.44, 'PP', 'F');
insert into tb_produtos (nome, preco, tamanho, genero) values ("Blusa Comprida", 55.22, 'PP', 'M');
insert into tb_produtos (nome, preco, tamanho, genero) values ("Bermuda", 32.55, 'PP', 'M');


-- exercicio 4 Faça um SELECT que retorne todes os produtos com o valor maior do que 500.

select * from tb_produtos where preco > 500;

-- exercicio 5 Faça um SELECT que retorne todes os produtos com o valor menor do que 500.

select * from tb_produtos where preco < 500;

-- exercicio 6 Ao término atualize um registro desta tabela através de uma query de atualização.

update tb_produtos set preco = 45.66 where id = 6;
select * from tb_produtos;