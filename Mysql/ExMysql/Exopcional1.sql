create database db_minha_casa_mais_bonita;

use db_minha_casa_mais_bonita;

CREATE TABLE tb_categoria (
	id INT AUTO_INCREMENT,
	tipo varchar(255) NOT NULL,
    ativo boolean not null,
	PRIMARY KEY (id)
);

CREATE TABLE tb_produto (
	id INT AUTO_INCREMENT,
	nome varchar(255) NOT NULL,
	valor decimal (10,2) NOT NULL,
    cor varchar(20) not null,
	produto_id int not null,
    primary key (id),
    foreign key (produto_id) references tb_categoria (id)
);

CREATE TABLE tb_usuario (
	id INT NOT NULL AUTO_INCREMENT,
	nome varchar(20) NOT NULL,
	genero varchar(10) not null,
    ativo boolean not null,
	
	PRIMARY KEY (id)
);

insert into tb_categoria(tipo, ativo) values ("Moveis", true);
insert into tb_categoria(tipo, ativo) values ("Telefonia", true);
insert into tb_categoria(tipo, ativo) values ("Eletrodoméstico", true);
insert into tb_categoria(tipo, ativo) values ("Informatica", true);

insert into tb_produto(nome, valor, cor, produto_id) values ("armário", 600, "marrom", 1);
insert into tb_produto(nome, valor, cor, produto_id) values ("Maquina de lavar", 1200, "Branca", 3);
insert into tb_produto(nome, valor, cor, produto_id) values ("Telefone sem fio", 150, "preto", 2);
insert into tb_produto(nome, valor, cor, produto_id) values ("Computador", 2000, "Branco", 4);
insert into tb_produto(nome, valor, cor, produto_id) values ("Guarda roupa", 1100, "Rosa", 3);
insert into tb_produto(nome, valor, cor, produto_id) values ("Espelho", 50, "Rosa", 1);




insert into tb_usuario(nome, genero, ativo ) values ("Ramon", "masculino",true );
insert into tb_usuario(nome, genero, ativo ) values ("Fernanda", "feminino",true );
insert into tb_usuario(nome, genero, ativo ) values ("Carol", "feminino",true );
insert into tb_usuario(nome, genero, ativo) values ("Pedro", "masculino", true);

select * from tb_produto where valor > 50;
select * from tb_produto where valor > 6 and valor < 60;
select * from tb_produto where nome like "%b%";
select * from tb_produto where nome like "%c%";
select * from tb_produto inner join tb_categoria on tb_produto.produto_id = tb_categoria.id;
SELECT AVG(valor) FROM tb_produto;
SELECT sum(valor) FROM tb_produto;
SELECT COUNT(nome) FROM tb_produto;
select * from tb_produto where produto_id = 4;
