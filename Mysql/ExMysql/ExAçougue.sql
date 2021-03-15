create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar (255) not null,
ativo boolean not null,
primary key (id)
);

create table tb_produtos(
id bigint auto_increment,
nome varchar (255) not null,
preco decimal (10,2) not null,
id_categoria bigint,

primary key (id),
foreign key (id_categoria) references tb_categoria(id)
);

insert tb_categoria (descricao,ativo) values ("Aves",true);
insert tb_categoria (descricao,ativo) values ("Bovino",true);
insert tb_categoria (descricao,ativo) values ("Embutidos",true);
insert tb_categoria (descricao,ativo) values ("Outros",true);

insert tb_produtos (nome,preco,id_categoria) values  ("ASA",40.00,1);
insert tb_produtos (nome,preco,id_categoria) values  ("Bacon",50.00,2);
insert tb_produtos (nome,preco,id_categoria) values  ("Presunto",10.00,3);
insert tb_produtos (nome,preco,id_categoria) values  ("Picanha",60.00,1);
insert tb_produtos (nome,preco,id_categoria) values  ("Orelha de porco",35.00,4);
insert tb_produtos (nome,preco,id_categoria) values  ("Cupim",45.00,1);

select * from tb_produtos where preco >50.00;

select * from tb_produtos where preco between 3.00 and 60.00;

select * from tb_produtos where nome like "%C%";


select tb_produtos.nome from tb_produtos where tb_produtos.id_categoria = 3;












