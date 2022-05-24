-- atv 1 

-- exercicio 1 /*Criar o Banco de dados*/

create database db_rh;

use db_rh;

-- exercicio 2 /*Criar a Tabela de colaboradores*/

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255),
cargo varchar(255),
salario decimal(10,2),
data_nascimento date,
primary key (id)
);

-- exercicio 3 /*Inserir dados na tabela (5 registros)*/

insert into tb_funcionarios (nome, cargo, salario, data_nascimento) values ("Jose", "Analista", 4000.00, "1995-04-13");
insert into tb_funcionarios (nome, cargo, salario, data_nascimento) values ("Josue", "Desenvolvedor", 4000.00, "1998-02-02");
insert into tb_funcionarios (nome, cargo, salario, data_nascimento) values ("Pedro", "Vendedor", 1500.00, "1998-02-02");
insert into tb_funcionarios (nome, cargo, salario, data_nascimento) values ("Alfredo", "Gerente", 8000.00, "1991-01-02");
insert into tb_funcionarios (nome, cargo, salario, data_nascimento) values ("Ricardo", "Desenvolvedor", 3000.00, "1991-02-01");

-- exercicio 4 Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.

select * from tb_funcionarios where salario > 2000;

-- exercicio 5 Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.

select * from tb_funcionarios where salario < 2000;

-- exercicio 6 Ao término atualize um registro desta tabela através de uma query de atualização.

update tb_funcionarios set salario = 7000 where id = 4;
select * from tb_funcionarios where id = 4;





