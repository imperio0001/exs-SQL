create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categorias(
id_categorias int auto_increment,
area_categorias varchar(40),
campus_categorias varchar(40),
primary key(id_categorias)
);

insert into tb_categorias(area_categorias, campus_categorias) 
values('exatas', 'centro');
insert into tb_categorias(area_categorias, campus_categorias) 
values('humanas', 'leste');
insert into tb_categorias(area_categorias, campus_categorias) 
values('sociais', 'leste');
insert into tb_categorias(area_categorias, campus_categorias) 
values('biológicas', 'norte');
insert into tb_categorias(area_categorias, campus_categorias) 
values('analiticas', 'sul');

create table tb_cursos(
id_cursos int auto_increment,
nome varchar(30),
periodo int,
modalidade varchar(10),
turno varchar(10),
categoria_id int,
primary key(id_cursos),
foreign key(categoria_id) references tb_categorias(id_categorias)
);

insert into tb_cursos(nome, periodo, modalidade, turno, categoria_id) 
values('Mecanica do Corpo Rigido', 1, 'ead', 'noturno', 1);
insert into tb_cursos(nome, periodo, modalidade, turno, categoria_id) 
values('Mecanica dos Fluidos', 2, 'presencial', 'noturno', 1);
insert into tb_cursos(nome, periodo, modalidade, turno, categoria_id) 
values('Engenharia e Analise de Valor', 3, 'presencial', 'matutino', 5);
insert into tb_cursos(nome, periodo, modalidade, turno, categoria_id) 
values('Ingles', 2, 'ead', 'vespertino', 2);
insert into tb_cursos(nome, periodo, modalidade, turno, categoria_id) 
values('Calculo 1', 5, 'presencial', 'matutino', 4);
insert into tb_cursos(nome, periodo, modalidade, turno, categoria_id) 
values('Fisica 2', 2, 'ead', 'integral', 3);
insert into tb_cursos(nome, periodo, modalidade, turno, categoria_id) 
values('Calculo Numerico', 3, 'presencial', 'integral', 5);
insert into tb_cursos(nome, periodo, modalidade, turno, categoria_id) 
values('Engenharia do Produto', 4, 'ead', 'vespertino', 3);
insert into tb_cursos(nome, periodo, modalidade, turno, categoria_id) 
values('Ensino Religioso 1', 5, 'presencial', 'ead', 4);

select * from tb_cursos;

select * from tb_cursos where periodo > 2;

select * from tb_cursos where periodo > 1 and periodo < 4;

select * from tb_cursos where nome like '%v%';

select * from tb_cursos inner join tb_categorias 
on tb_cursos.categoria_id = tb_categorias.id_categorias; 

select * from tb_cursos inner join tb_categorias 
on tb_cursos.categoria_id = tb_categorias.id_categorias 
where id_cursos = 2; 