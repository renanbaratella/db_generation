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
turma int,
nota decimal(4,2),
primary key(id)
);

-- exercicio 3 Insira nesta tabela no mínimo 8 dados (registros).

INSERT INTO tb_alunos (nome, data_nasc, turma, nota) VALUES ("Paulo Miklos", "1959-01-21", 1, 8.00);
INSERT INTO tb_alunos (nome, data_nasc, turma, nota) VALUES ("Sérgio Britto", "1959-09-18", 1, 9.00);
INSERT INTO tb_alunos (nome, data_nasc, turma, nota) VALUES ("Tony Bellotto", "1960-06-30", 2, 6.50);
INSERT INTO tb_alunos (nome, data_nasc, turma, nota) VALUES ("Charles Gavin", "1960-07-09", 2, 5.50);
INSERT INTO tb_alunos (nome, data_nasc, turma, nota) VALUES ("Arnaldo Antunes", "1960-09-02", 2, 9.00);
INSERT INTO tb_alunos (nome, data_nasc, turma, nota) VALUES ("Marcelo Fromer", "1961-12-03", 3, 9.00);
INSERT INTO tb_alunos (nome, data_nasc, turma, nota) VALUES ("Branco Mello", "1962-03-16", 3, 9.00);
INSERT INTO tb_alunos (nome, data_nasc, turma, nota) VALUES ("Nando Reis", "1963-01-12", 3, 8.00);

-- exercicio 4 Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.

select * from tb_alunos where nota > 7;

-- exercicio 5 Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.

select * from tb_alunos where nota < 7;

-- exercicio 6 Ao término atualize um registro desta tabela através de uma query de atualização.

update tb_alunos set nota = 5.00 where id = 8;
select * from tb_alunos;

