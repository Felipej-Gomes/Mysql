create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
classe_personagem varchar(255) not null,
ponto_forte varchar (255) not null,
arma varchar(255) not null,

primary key(id)
);


create table tb_personagem(
id bigint auto_increment,
nome varchar (255) not null,
ataque int not null,
defesa int not null,
inteligencia int not null,
nivel int not null,
id_personagem bigint ,

primary key (id),
FOREIGN KEY (id_personagem) REFERENCES tb_classe(id)
);

insert tb_classe (classe_personagem,ponto_forte,arma) values ("Mago","Inteligência","Livro");
insert tb_classe (classe_personagem,ponto_forte,arma) values ("Guerreiro","Força","Espada");
insert tb_classe (classe_personagem,ponto_forte,arma) values ("Ladrão","Furtividade","Adaga");
insert tb_classe (classe_personagem,ponto_forte,arma) values ("Druida","Conhecimento","Cajado");


insert tb_personagem (nome,ataque,defesa,inteligencia,nivel,id_personagem) values ("link",1500,1800,800,2000,2);
insert tb_personagem (nome,ataque,defesa,inteligencia,nivel,id_personagem) values ("Mario",1000,1700,800,1500,4);
insert tb_personagem (nome,ataque,defesa,inteligencia,nivel,id_personagem) values ("Zereld",18000,2000,800,1000,2);
insert tb_personagem (nome,ataque,defesa,inteligencia,nivel,id_personagem) values ("Brout",2100,1300,800,900,1);
insert tb_personagem (nome,ataque,defesa,inteligencia,nivel,id_personagem) values ("Epic",1500,2500,900,700,3);
insert tb_personagem (nome,ataque,defesa,inteligencia,nivel,id_personagem) values ("Lilian",2000,1100,800,620,3);


update tb_personagem set ataque = 1800 where id=5;


select * from tb_personagem where ataque >2000;
select * from tb_personagem where ataque <2000;

select * from tb_personagem where nome like "%c%";

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.id_personagem;

select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.id_personagem where classe_personagem like "%Guerreiro%";








