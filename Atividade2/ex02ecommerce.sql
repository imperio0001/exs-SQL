-- Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
create database ex02ecommerce;

use ex02ecommerce;

-- Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
create table produtos(
	id int not null auto_increment,
    nome varchar(100) not null,
    descricao varchar(5000) not null,
    preco decimal(6,2) not null,
    categoria varchar(30) not null,
    primary key(id)
);

select * from produtos;

-- Insira nesta tabela no mínimo 8 dados (registros).
insert into produtos(nome, descricao, preco, categoria) values ('monitor lcd', 'monitor 30 polegadas', 1000.00,'eletronicos');
insert into produtos(nome, descricao, preco, categoria) values ('teclado mecanico', 'teclado mecanico com led', 500.00,'eletronicos');
insert into produtos(nome, descricao, preco, categoria) values ('teclado basico', 'teclado padrão ABNT2', 50.00,'eletronicos');
insert into produtos(nome, descricao, preco, categoria) values ('mouse basico com fio', 'mouse básico com formado de um fusca', 40.00,'eletronicos');
insert into produtos(nome, descricao, preco, categoria) values ('mouse gamer', 'mouse gamer sem fio com botoes na lateral', 300.00,'eletronicos');
insert into produtos(nome, descricao, preco, categoria) values ('webcam barata', 'webcam basica 720 p', 40.00,'eletronicos');
insert into produtos(nome, descricao, preco, categoria) values ('webcam media', 'webcam 1080 p', 60.00,'eletronicos');
insert into produtos(nome, descricao, preco, categoria) values ('webcam top', 'webcam 1080 com microfone e com filtro de ruido', 200.00,'eletronicos');

-- Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
select * from produtos where preco > 500;
-- Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
select * from produtos where preco < 500;

-- Ao término atualize um registro desta tabela através de uma query de atualização.
update produtos set preco = 30.00 where id = 4;

select * from produtos where preco = 40;