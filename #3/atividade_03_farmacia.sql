create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

-- 1
create table tb_categorias(
	id bigint auto_increment,
    nome varchar(50),
    departamento varchar(50),
    primary key(id)
);

-- 2
create table tb_produtos(
	id bigint auto_increment,
    nome varchar(50),
    preco decimal(6,2),
    generico boolean,
    tb_categorias_id bigint,
    primary key(id),
    -- 3
    foreign key(tb_categorias_id) references tb_categorias(id)
);

-- 4
insert into tb_categorias(nome, departamento) values ("Hidratacao", "Beleza");
insert into tb_categorias(nome, departamento) values ("Esmaltes", "Beleza");
insert into tb_categorias(nome, departamento) values ("Cereais", "Fitness");
insert into tb_categorias(nome, departamento) values ("Shampoo", "Higiene");
insert into tb_categorias(nome, departamento) values ("Vitaminas", "Saúde");

-- 5
insert into tb_produtos(nome, preco, generico, tb_categorias_id) values ("Creme de hidratação Skala Potão Desmaiado", 9.86, true, 1);
insert into tb_produtos(nome, preco, generico, tb_categorias_id) values ("Creme de hidratação Lola Cosmetics Leve and Solto", 36.33, true, 1);
insert into tb_produtos(nome, preco, generico, tb_categorias_id) values ("Creme de hidratação Aussie 3 Minute Miracle Smooth", 77.33, false, 1);
insert into tb_produtos(nome, preco, generico, tb_categorias_id) values ("Colorama", 9.86, true, 2);
insert into tb_produtos(nome, preco, generico, tb_categorias_id) values ("Risque", 12.44, true, 2);
insert into tb_produtos(nome, preco, generico, tb_categorias_id) values ("Cereal Infantil Nestlé Mucilon Arroz e Aveia", 15.55, true, 3);
insert into tb_produtos(nome, preco, generico, tb_categorias_id) values ("Shampoo Johnson's Baby Hidratação Intensa", 19.52, true, 4);
insert into tb_produtos(nome, preco, generico, tb_categorias_id) values ("VITAMINA C", 9.86, true, 5);

-- 6
select * from tb_produtos where preco > 50;

-- 7
select * from tb_produtos where preco between 5 and 60; 

-- 8 
select * from tb_produtos where nome like "%C%";

-- 9
select * from tb_produtos p
inner join tb_categorias c
on p.tb_categorias_id = c.id;

-- 10
select * from tb_produtos p
inner join tb_categorias c
on p.tb_categorias_id = c.id
where c.nome = "Hidratacao";


