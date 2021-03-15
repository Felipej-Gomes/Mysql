create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment not null,
tipo varchar (255) not null,
ativo boolean not null,

primary key(id)
);

insert into tb_categoria(tipo,ativo) value ("Homeopatico", false);
insert into tb_categoria(tipo,ativo) value ("Genérico", true);
insert into tb_categoria(tipo,ativo) value ("Manipulado", true);
insert into tb_categoria(tipo,ativo) value ("Cosmético", true);
insert into tb_categoria(tipo,ativo) value ("Higiene", true);



create table tb_produto(
id bigint auto_increment not null,
nome varchar(255) not null,
preco decimal (10,2) not null,
id_categoria bigint not null,

primary key (id),
foreign key (id_categoria) references tb_categoria(id)
);

INSERT INTO tb_produto (nome,preco,id_categoria) VALUE ("Buchinha paulista", 30.00,1);
INSERT INTO tb_produto (nome,preco,id_categoria) VALUE ("Bupropiona", 70.00,1);
INSERT INTO tb_produto (nome,preco,id_categoria)VALUE ("Esmalte",7.00,4);
INSERT INTO tb_produto (nome,preco,id_categoria)VALUE ("Amoxilina",45.00,2);
INSERT INTO tb_produto (nome,preco,id_categoria) VALUE ("Condicionador",18.00,5);

select * from tb_produto where preco >50;

select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like "%C%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria;

select tb_produto.nome from tb_produto where tb_produto.id_categoria = 1;








