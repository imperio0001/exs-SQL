create database db_generation_game_online;

use db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
nome_classes varchar(255) NOT NULL,
descricao varchar(100),
PRIMARY KEY (id)
);

CREATE TABLE tb_personagem(
id bigint AUTO_INCREMENT,
nome_personagem varchar(100) NOT NULL,
ataque int(10), 
defesa int(10),
vitalidade int(10),
classes_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

insert into tb_classes(nome_classes, descricao) values ("Guerreiro", "Classe física");
insert into tb_classes(nome_classes, descricao) values ("Mago", "Classe magica");
insert into tb_classes(nome_classes, descricao) values ("Nicromancer", "Classe de criar mortos vivos");
insert into tb_classes(nome_classes, descricao) values ("Arqueiro", "Classe de Agilidade com arcos");
insert into tb_classes(nome_classes, descricao) values ("Druida", "Classe que ultiliza animais");

select * from tb_classes;

insert into tb_personagem(nome_personagem, ataque, defesa, vitalidade, classes_id) values ("Bob", 6000, 1500, 2500, 1);
insert into tb_personagem(nome_personagem, ataque, defesa, vitalidade, classes_id) values ("Jack", 1000, 7000, 8000, 2);
insert into tb_personagem(nome_personagem, ataque, defesa, vitalidade, classes_id) values ("Ken", 2300, 2800, 2000, 3);
insert into tb_personagem(nome_personagem, ataque, defesa, vitalidade, classes_id) values ("Dalsin", 1000, 8000, 1100, 4);
insert into tb_personagem(nome_personagem, ataque, defesa, vitalidade, classes_id) values ("Patolino", 1800, 5000, 1900, 5);
insert into tb_personagem(nome_personagem, ataque, defesa, vitalidade, classes_id) values ("Mickey", 4000, 500, 3000, 1);
insert into tb_personagem(nome_personagem, ataque, defesa, vitalidade, classes_id) values ("Miney", 2000, 2000, 500, 2);
insert into tb_personagem(nome_personagem, ataque, defesa, vitalidade, classes_id) values ("Jessy", 1000, 5000, 1000, 3);
insert into tb_personagem(nome_personagem, ataque, defesa, vitalidade, classes_id) values ("Marrone", 1000, 5000, 1000, 4);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000 ORDER BY nome_personagem;
select * from tb_personagem where nome_personagem like "%b%";

select * from tb_personagem inner join tb_classes
on tb_personagem.classes_id = tb_classes.id;

select * from tb_personagem inner join tb_classes
on tb_personagem.classes_id = tb_classes.id where tb_classes.nome_classes  = "Guerreiro";