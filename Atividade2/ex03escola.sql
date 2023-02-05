-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as 
-- informações dos estudantes deste registro dessa escola. 
create database ex03escola;

use ex03escola;

-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 
-- atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
create table alunos(
	id int auto_increment,
    nome varchar(150) not null,
    nota float(3,1) not null,
    serie varchar(20) not null,
    materia varchar(20) not null,
    
    primary key(id)
);

select * from alunos;

-- Insira nesta tabela no mínimo 8 dados (registros).
insert into alunos(nome, nota, serie, materia) values ('Abel', 7.0, '3º médio', 'matemática');
insert into alunos(nome, nota, serie, materia) values ('Bernardo', 9.0, '3º médio', 'física');
insert into alunos(nome, nota, serie, materia) values ('Camila', 6.0, '3º médio', 'geografia');
insert into alunos(nome, nota, serie, materia) values ('Roberta', 6.0, '3º médio', 'história');
insert into alunos(nome, nota, serie, materia) values ('Cintia', 7.8, '3º médio', 'português');
insert into alunos(nome, nota, serie, materia) values ('Regiane', 7.0, '3º médio', 'biologia');
insert into alunos(nome, nota, serie, materia) values ('Marcos', 8.9, '3º médio', 'matemática');
insert into alunos(nome, nota, serie, materia) values ('Natasha', 7.1, '3º médio', 'matemática');

-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
select * from alunos where nota >= 7 and materia = 'matemática';
-- Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
select * from alunos where nota <= 7;

-- Ao término atualize um registro desta tabela através de uma query de atualização.
update alunos set nota = 7.8 where materia = 'português'