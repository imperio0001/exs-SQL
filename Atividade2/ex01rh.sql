-- 1. Crie um banco de dados para um serviço de RH de uma empresa, 
-- onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
create database ex01rh;

-- 2. Crie uma tabela de colaboradores e determine 5 atributos relevantes dos 
-- colaboradores para se trabalhar com o serviço deste RH.
use ex01rh;

-- 3. Insira nesta tabela no mínimo 5 dados (registros).
create table colaboradores(
	id int not null auto_increment,
    nome varchar(120) not null,
    salario decimal(9,2) not null,
    cargo varchar(50) not null,
    setor varchar(50),
    primary key(id)
);

-- 4. Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
select * from colaboradores;

-- inserir os valores descritos, dentro da tabela
insert into colaboradores(nome, salario,cargo,setor) 
	values ('Corinthienzo',10000.00,'instrutor','aulas');
    
insert into colaboradores(nome, salario,cargo,setor) 
	values ('Marcos',15000.00,'instrutor','aulas');
    
insert into colaboradores(nome, salario,cargo) 
	values ('Joao',3000.00,'auxiliar');
    
insert into colaboradores(nome, salario,cargo) 
	values ('Marcelo',1600.00,'auxiliar');
    
insert into colaboradores(nome, salario,cargo) 
	values ('Marina',2000.00,'auxiliar');

-- 5. Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
select nome, salario from colaboradores where salario < 2000;

-- 6. Ao término atualize um registro desta tabela através de uma query de atualização.
update colaboradores set salario = 3000 where id = 5;