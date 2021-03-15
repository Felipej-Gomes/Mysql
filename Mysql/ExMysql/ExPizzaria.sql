create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho varchar (255) not null,
tipo varchar (255) not null,

primary key (id)
);

create table tb_pizza(
id bigint auto_increment,
nome varchar (255) not null,
sabor varchar (255) not null,
preco decimal (65,2) not null,
id_pizza bigint,

primary key(id),
foreign key (id_pizza) references tb_categoria(id)
);

insert tb_categoria(tamanho,tipo) values ("Grande","Doce");
insert tb_categoria(tamanho,tipo) values ("Pequena","Doce");
insert tb_categoria(tamanho,tipo) values ("Média","Salgada");
insert tb_categoria(tamanho,tipo) values ("Grande","Vegana");



insert tb_pizza(nome,sabor,preco) values ("Nossa casa", "Mussarela e tomate seco", 29.90);
insert tb_pizza(nome,sabor,preco) values ("Namorado", "Palmito e mussarela", 29.90);
insert tb_pizza(nome,sabor,preco) values ("Lombo1", "Lombo, cebola e mussarela", 19.90);
insert tb_pizza(nome,sabor,preco) values ("Doçura", "Chocolate com morango", 29.90);
insert tb_pizza(nome,sabor,preco) values ("Carioca", "Peito de peru e catupiry", 29.90);
insert tb_pizza(nome,sabor,preco) values ("Crocante", "Peito de peru, milho e mussarela", 50.00);

select * from tb_pizza where preco >45.00;
select * from tb_pizza where preco between 29.00 and 60.00;
select * from tb_pizza where nome like "%C%";

select * from tb_pizza inner join tb_categoria on tb_pizza.id = tb_categoria.id;

select tb_pizza.sabor from tb_pizza where tb_pizza.id = 4;





	
