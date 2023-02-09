create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id_categorias int auto_increment,
tipo_massa varchar(60),
borda_pizza varchar(60),
primary key(id_categorias)
);

insert into tb_categorias(tipo_massa, borda_pizza) 
values('especial', 'forno a lenha');
insert into tb_categorias(tipo_massa, borda_pizza) 
values('tradicional', 'forno a gás');
insert into tb_categorias(tipo_massa, borda_pizza) 
values('moda da casa', 'forno a lenha + molho especial');
insert into tb_categorias(tipo_massa, borda_pizza) 
values('personalizada', 'a gosto do cliente');

select * from tb_categorias;

create table tb_pizzas(
id_pizzas int auto_increment,
sabor varchar(60),
tamanho varchar(20),
valor double,
borda boolean,
adicional boolean,
tipo_massa_adicional varchar(50),
categoria_id int,
primary key(id_pizzas),
foreign key (categoria_id) references tb_categorias(id_categorias)
);

insert into tb_pizzas(sabor, tamanho, valor, borda, adicional, tipo_massa_adicional, categoria_id)
values('Mussarela', 'médio', 45.00, true, false, '', 1);
insert into tb_pizzas(sabor, tamanho, valor, borda, adicional, tipo_massa_adicional, categoria_id)
values('Vegetariana', 'grande', 60.00, false, true, '', 2);
insert into tb_pizzas(sabor, tamanho, valor, borda, adicional, tipo_massa_adicional, categoria_id)
values('Banana com canela', 'pequena', 50.00, true, false, '', 3);
insert into tb_pizzas(sabor, tamanho, valor, borda, adicional, tipo_massa_adicional, categoria_id)
values('Portuguesa 1', 'médio', 70.00, false, false, '', 3);
insert into tb_pizzas(sabor, tamanho, valor, borda, adicional, tipo_massa_adicional, categoria_id)
values('Hot Dog', 'gigante', 90.00, true, true, '',  4);
insert into tb_pizzas(sabor, tamanho, valor, borda, adicional, tipo_massa_adicional, categoria_id)
values('Catupiry', 'médio', 45.00, false, true, '', 1);
insert into tb_pizzas(sabor, tamanho, valor, borda, adicional, tipo_massa_adicional, categoria_id)
values('Palmito', 'grande', 80.00, false, false, '', 2);
insert into tb_pizzas(sabor, tamanho, valor, borda, adicional, tipo_massa_adicional, categoria_id)
values('4 queijos', 'médio', 50.00, false, true, '', 4);
insert into tb_pizzas(sabor, tamanho, valor, borda, adicional, tipo_massa_adicional, categoria_id)
values('A moda da casa', 'grande', 70.00, false, true, 'integral', 1);

select * from tb_pizzas;

select * from tb_pizzas where valor > 45;
select * from tb_pizzas where valor >= 50 and valor <= 100;

select * from tb_pizzas where sabor like "%M%";
select * from tb_pizzas where sabor like "%P%";

select * from tb_pizzas inner join tb_categorias 
on tb_pizzas.categoria_id = tb_categorias.id_categorias;

select * from tb_pizzas inner join tb_categorias 
on tb_pizzas.categoria_id = tb_categorias.id_categorias 
where tb_categorias.tipo = 'moda da casa';