create database db_cidade_das_carnes;

use db_cidade_das_carnes;

-- 1
create table tb_categorias(
	id bigint auto_increment,
    nome varchar(50),
    qualidade varchar(50),
    primary key(id)
);

-- 2
create table tb_produtos(
	id bigint auto_increment,
    nome varchar(50),
    preco decimal(6,2),
    tamanho varchar(50),
    dtvalidade date,
    tb_categorias_id bigint,
    primary key(id),
    -- 3
    foreign key(tb_categorias_id) references tb_categorias(id)
);

-- 4
insert into tb_categorias(nome, qualidade) values ("Picanha", "Carne de Primeira");
insert into tb_categorias(nome, qualidade) values ("Filé mignon", "Carne de Primeira");
insert into tb_categorias(nome, qualidade) values ("Contrafilé", "Carne de Primeira");
insert into tb_categorias(nome, qualidade) values ("Costela", "Carne de Segunda");
insert into tb_categorias(nome, qualidade) values ("Ponta de agulha", "Carne de Terceira");

-- 5
insert into tb_produtos(nome, preco, tamanho, dtvalidade, tb_categorias_id) values ("Picanha Argentina", 99.55, "BIG", "2022-08-28", 1);
insert into tb_produtos(nome, preco, tamanho, dtvalidade, tb_categorias_id) values ("Picanha Americana", 122.55, "BIG", "2022-04-24", 1);
insert into tb_produtos(nome, preco, tamanho, dtvalidade, tb_categorias_id) values ("Picanha Tasmânia", 55.55, "MEDIUM", "2023-04-22", 1);
insert into tb_produtos(nome, preco, tamanho, dtvalidade, tb_categorias_id) values ("Tournedos", 105.55, "SMALL", "2022-02-23", 2);
insert into tb_produtos(nome, preco, tamanho, dtvalidade, tb_categorias_id) values ("Bife ancho", 22.55, "MEDIUM", "2022-08-28", 3);
insert into tb_produtos(nome, preco, tamanho, dtvalidade, tb_categorias_id) values ("Ojo de bife", 44.55, "MEDIUM", "2023-05-26", 3);
insert into tb_produtos(nome, preco, tamanho, dtvalidade, tb_categorias_id) values ("Costela janela", 99.55, "SMALL", "2023-02-15", 4);
insert into tb_produtos(nome, preco, tamanho, dtvalidade, tb_categorias_id) values ("Bife do Vazio", 33.55, "BIG", "2023-02-16", 5);

-- 6
select * from tb_produtos where preco > 50;

-- 7
select * from tb_produtos where preco between 50 and 100;

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
where c.nome = "Picanha";





