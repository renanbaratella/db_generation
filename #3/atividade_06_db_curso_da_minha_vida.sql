create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

-- 1
create table tb_categorias(
	id bigint auto_increment,
    area varchar(50),
    instrutor varchar(50),
    primary key(id)
);

-- 2
create table tb_cursos (
	id bigint auto_increment,
    nome_curso varchar(200),
    preco decimal(6,2),
    qtdhoras decimal(4,2),
    avaliacaoestrelas decimal(4,2),
    tb_categorias_id bigint,
    primary key(id),
    -- 3
    foreign key(tb_categorias_id) references tb_categorias(id)
);

-- 4
insert into tb_categorias(area, instrutor) values ("TI", "Nelio Alves");
insert into tb_categorias(area, instrutor) values ("Marketing", "Diego Davila");
insert into tb_categorias(area, instrutor) values ("Musica", "Luciano Alves");
insert into tb_categorias(area, instrutor) values ("Fotografia", "Allan Bravos");
insert into tb_categorias(area, instrutor) values ("Design", "Leila Adriano Ostoyke");

-- 5
insert into tb_cursos(nome_curso, preco, qtdhoras, avaliacaoestrelas, tb_categorias_id) values ("Curso de Piano Completo para Iniciantes, por música e ouvido", 600.00, 18.5, 4.7, 3);
insert into tb_cursos(nome_curso, preco, qtdhoras, avaliacaoestrelas, tb_categorias_id) values ("Curso Completo de Marketing Digital - 23 Cursos em 1", 550.00, 40, 4.7, 2);
insert into tb_cursos(nome_curso, preco, qtdhoras, avaliacaoestrelas, tb_categorias_id) values ("Java COMPLETO Programação Orientada a Objetos +Projetos", 200.00, 51, 4.8, 1);
insert into tb_cursos(nome_curso, preco, qtdhoras, avaliacaoestrelas, tb_categorias_id) values ("Algoritmos e Lógica de Programação 2022 - O Curso COMPLETO", 159.44, 25, 4.6, 1);
insert into tb_cursos(nome_curso, preco, qtdhoras, avaliacaoestrelas, tb_categorias_id) values ("C# COMPLETO Programação Orientada a Objetos + Projetos", 766.22, 38, 4.6, 1);
insert into tb_cursos(nome_curso, preco, qtdhoras, avaliacaoestrelas, tb_categorias_id) values ("Fotografia de Produtos com Celular", 221.11, 3.5, 4.5, 4);
insert into tb_cursos(nome_curso, preco, qtdhoras, avaliacaoestrelas, tb_categorias_id) values ("Canva: design gráfico sem mistérios [para iniciantes]", 50.22, 8, 4.6, 5);
insert into tb_cursos(nome_curso, preco, qtdhoras, avaliacaoestrelas, tb_categorias_id) values ("Curso de Spring", 222.44, 40, 5, 1);

-- 6 
select * from tb_cursos where preco > 500;

-- 7
select * from tb_cursos where preco between 600 and 1000;

-- 8
select * from tb_cursos where nome_curso like "%J%";

-- 9
select * from tb_cursos cur
inner join tb_categorias cat
on cur.tb_categorias_id = cat.id;

-- 10
select * from tb_cursos cur
inner join tb_categorias cat
on cur.tb_categorias_id = cat.id
where cat.area = "TI";