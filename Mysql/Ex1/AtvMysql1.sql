create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
classe_personagem varchar(255) not null,
ponto_forte varchar (255) not null,
arma varchar (255) not null,

primary key(id)
);

insert tb_classe (classe_personagem,ponto_forte,arma) values ("Mago","Inteligência","Livro");
insert tb_classe (classe_personagem,ponto_forte,arma) values ("Guerreiro","Força","Espada");
insert tb_classe (classe_personagem,ponto_forte,arma) values ("Ladrão","Furtividade","Adaga");
insert tb_classe (classe_personagem,ponto_forte,arma) values ("Druida","Conhecimento","Cajado");








