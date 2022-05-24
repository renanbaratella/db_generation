-- exercicio 1 Crie um banco de dados para um registro de uma escola, onde o 
 -- sistema trabalhará com as informações dos estudantes deste registro dessa escola. 

create database db_escola;

use db_escola;

-- exercicio 2 Crie uma tabela estudantes e utilizando a habilidade de abstração e 
-- determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.

create table tb_alunos(
id bigint auto_increment,
nome varchar(255),
data_nasc date,
sala int,
nota decimal(4,2),
primary key(id)
);

select * from tb_alunos;
-- exercicio 3 Insira nesta tabela no mínimo 8 dados (registros).

INSERT INTO tb_alunos (nome, nota, data_nasc, sala) VALUES ("Renan", 4.2,"1991-01-18", 3);
INSERT INTO tb_alunos (nome, nota, data_nasc, sala) VALUES ("Jose", 5.2, "1991-01-18", 2);
INSERT INTO tb_alunos (nome, nota, data_nasc, sala) VALUES ("Alfredo", 4.2, "1995-06-30", 4);
INSERT INTO tb_alunos (nome, nota, data_nasc, sala) VALUES ("Pedro", 7.2, "1992-07-09", 2);
INSERT INTO tb_alunos (nome, nota, data_nasc, sala) VALUES ("Rebeca", 8.2, "1989-09-02", 1);
INSERT INTO tb_alunos (nome, nota, data_nasc, sala) VALUES ("Tonia", 2.5, "1985-12-03", 7);
INSERT INTO tb_alunos (nome, nota, data_nasc, sala) VALUES ("Aragorn", 6, "1989-03-16", 2);
INSERT INTO tb_alunos (nome, nota, data_nasc, sala) VALUES ("Legolas", 8, "1987-01-12", 5);

-- exercicio 4 Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.

select * from tb_alunos where nota > 7;

-- exercicio 5 Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.

select * from tb_alunos where nota < 7;

-- exercicio 6 Ao término atualize um registro desta tabela através de uma query de atualização.

update tb_alunos set nota = 5.00 where id = 8;
select * from tb_alunos;

