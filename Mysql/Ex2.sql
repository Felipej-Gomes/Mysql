create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(100) not null,
cor varchar (50) not null,
preco float not null,
estado varchar (50) not null,
primary key (id)
);

select * from tb_produtos;

insert into tb_produtos (nome,cor,preco,estado) values ("Celular","Branco",2000,"Usado");
insert into tb_produtos (nome,cor,preco,estado) values ("Camiseta","Preta",70,"Novo");
insert into tb_produtos (nome,cor,preco,estado) values ("Relogio","Azul",500,"Novo");

select * from	tb_produtos where preco >500;
select * from	tb_produtos where preco <500;

update tb_produtos set preco = 1500 where id =1;









