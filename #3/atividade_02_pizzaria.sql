create database db_pizzaria_legal;

use db_pizzaria_legal;


-- 1
create table tb_categorias(
	id bigint auto_increment,
    nome varchar(50),
    primary key(id)
);

-- 2
create table tb_pizzas(
	id bigint auto_increment,
    nome varchar(50),
    preco decimal(6,2),
    borda varchar(50),
    tamanho varchar(10),
    tb_categorias_id bigint,
    primary key(id),
    -- 3
    foreign key(tb_categorias_id) references tb_categorias(id)
);

-- 4
insert into tb_categorias(nome) values ("Pizzas Salgadas"),("Pizza Doce"),("Pizza Vegana"),("Pizza Integral"),("Pizza Vegetariana");


-- 5 
insert into tb_pizzas(nome, preco, borda, tamanho, tb_categorias_id) values ("Americana", 59.99, "Catupiry", "Grande", 1); 
insert into tb_pizzas(nome, preco, borda, tamanho, tb_categorias_id) values ("Atum", 30.99, "Catupiry", "Grande", 1); 
insert into tb_pizzas(nome, preco, borda, tamanho, tb_categorias_id) values ("Pepperoni", 53.99, "Catupiry", "Grande", 1); 
insert into tb_pizzas(nome, preco, borda, tamanho, tb_categorias_id) values ("Margeritha", 102.99, "Catupiry", "Grande", 1); 
insert into tb_pizzas(nome, preco, borda, tamanho, tb_categorias_id) values ("Prestigio", 67.99, "Chocolate", "Média", 2); 
insert into tb_pizzas(nome, preco, borda, tamanho, tb_categorias_id) values ("Confete", 34.99, "Chocolate", "Grande", 2); 
insert into tb_pizzas(nome, preco, borda, tamanho, tb_categorias_id) values ("Alho e oleo", 39.99, "Catupiry", "Grande", 3); 
insert into tb_pizzas(nome, preco, borda, tamanho, tb_categorias_id) values ("Berinjela e abobrinha", 89.99, "Catupiry", "Grande", 4); 
insert into tb_pizzas(nome, preco, borda, tamanho, tb_categorias_id) values ("Pimentão e azeitona", 39.99, "Catupiry", "Grande", 5); 

-- 6
select * from tb_pizzas where preco > 45;

-- 7
select * from tb_pizzas where preco between 50 and 100;

-- 8
select * from tb_pizzas where nome like "%m%";

-- 9
select * from tb_pizzas p
inner join tb_categorias c
on p.tb_categorias_id = c.id;

-- 10
select * from tb_pizzas p
inner join tb_categorias c
on p.tb_categorias_id = c.id
where c.nome = "Pizza Doce";


