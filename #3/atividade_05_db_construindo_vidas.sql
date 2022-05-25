create database db_construindo_vidas;

use db_construindo_vidas;

-- 1
create table tb_categorias(
	id bigint auto_increment,
    nome varchar(50),
    loja varchar(50),
    primary key(id)
);

-- 2
create table tb_produtos(
	id bigint auto_increment,
    nome varchar(50),
    preco decimal(6,2),
    peso decimal(5,2),
    frete decimal(5,2),
    tb_categorias_id bigint,
    primary key(id),
    -- 3
    foreign key(tb_categorias_id) references tb_categorias(id)
);

-- 4
insert into tb_categorias(nome, loja) values ("Parte Estrutural", "Telha Norte");
insert into tb_categorias(nome, loja) values ("Instalação hidráulica", "C&C Casa & Construção");
insert into tb_categorias(nome, loja) values ("Instalação elétrica", "Copafer");
insert into tb_categorias(nome, loja) values ("Pisos e revestimentos", "Tiendeo");
insert into tb_categorias(nome, loja) values ("Acabamento", "Leroy Merlin");

-- 5
insert into tb_produtos(nome, preco, peso, frete, tb_categorias_id) values ("Cal", 144.33, 2.5, 22.33, 1);
insert into tb_produtos(nome, preco, peso, frete, tb_categorias_id) values ("Tijolo", 122.33, 2.2, 33.33, 1);
insert into tb_produtos(nome, preco, peso, frete, tb_categorias_id) values ("Brita", 33.22, 0.4, 9.99, 1);
insert into tb_produtos(nome, preco, peso, frete, tb_categorias_id) values ("Cisterna", 55.99, 1.4, 15.99, 2);
insert into tb_produtos(nome, preco, peso, frete, tb_categorias_id) values ("Caixa d’água", 144.33, 10.00, 22.33, 1);
insert into tb_produtos(nome, preco, peso, frete, tb_categorias_id) values ("Transformador", 32.55, 0.4, 15.22, 3);
insert into tb_produtos(nome, preco, peso, frete, tb_categorias_id) values ("Pisos de cerâmica ou madeira", 88.22, 1.2, 5.22, 4);
insert into tb_produtos(nome, preco, peso, frete, tb_categorias_id) values ("Portas e janelas", 200.22, 2.5, 33.22, 5);

-- 6
select * from tb_produtos where preco > 100;

-- 7
select * from tb_produtos where preco between 70 and 150;

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
where c.nome = "Instalação hidráulica";