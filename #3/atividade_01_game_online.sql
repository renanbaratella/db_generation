create database db_generation_game_online;

use db_generation_game_online;

-- 1
create table tb_classes(
	id bigint auto_increment,
    nome varchar(50),
    primary key(id)
);

-- 2, 3
create table tb_personagens(
	id bigint auto_increment,
    nome varchar(50),
    sexo char,
    lvl int,
    poder_de_ataque int,
    poder_de_defesa int,
    tb_classes_id bigint,
    primary key(id),
    foreign key(tb_classes_id) references tb_classes(id)
);

-- 4
insert into tb_classes(nome) values ("Knight"),("Sorcerer"),("Paladino"),("Lutador"),("Sacerdotisa");

-- 5
insert into tb_personagens(nome, sexo, lvl, poder_de_ataque, poder_de_defesa, tb_classes_id) values ("vowtz32", 'M', 1230, 544, 322, 1);
insert into tb_personagens(nome, sexo, lvl, poder_de_ataque, poder_de_defesa, tb_classes_id) values ("olook82", 'M', 1500, 555, 222, 1);
insert into tb_personagens(nome, sexo, lvl, poder_de_ataque, poder_de_defesa, tb_classes_id) values ("Goraca", 'F', 2098, 3440, 2440, 2);
insert into tb_personagens(nome, sexo, lvl, poder_de_ataque, poder_de_defesa, tb_classes_id) values ("Ninna Gil", 'F', 1432, 1500, 1200, 4);
insert into tb_personagens(nome, sexo, lvl, poder_de_ataque, poder_de_defesa, tb_classes_id) values ("Kommander", 'M', 2026, 5400, 3400, 3);
insert into tb_personagens(nome, sexo, lvl, poder_de_ataque, poder_de_defesa, tb_classes_id) values ("Bobeek", 'M', 2078, 3200, 1400, 5);
insert into tb_personagens(nome, sexo, lvl, poder_de_ataque, poder_de_defesa, tb_classes_id) values ("Aharisee", 'M', 2021, 6400, 3200, 5);
insert into tb_personagens(nome, sexo, lvl, poder_de_ataque, poder_de_defesa, tb_classes_id) values ("Veyllor", 'M', 1960, 7040, 3600, 3);

-- 6
select * from tb_personagens where poder_de_ataque > 2000;

-- 7
select * from tb_personagens where poder_de_defesa between 1000 and 2000;

-- 8
select * from tb_personagens where nome like "%C%";

-- 9
select * from tb_personagens p
inner join tb_classes c
on p.tb_classes_id = c.id;

-- 10
select p.nome, c.nome 
from tb_personagens p 
inner join tb_classes c 
on p.tb_classes_id = c.id
where c.nome = "Paladino";



