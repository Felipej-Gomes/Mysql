-- exercicio3
create database db_escola;

use db_escola;

create table tb_alunos(
id	bigint auto_increment,
nome varchar (255) not null,
idade int not null,
nota decimal(3,2) not null,
recuperacao boolean,
primary key(id)
);

insert into tb_alunos(nome,idade,nota,recuperacao)	values ("Antonio",15,7.5,true);
insert into tb_alunos(nome,idade,nota,recuperacao)	values ("Fernando",16,5.0,false);
insert into tb_alunos(nome,idade,nota,recuperacao)	values ("Anita",17,3.5,false);
insert into tb_alunos(nome,idade,nota,recuperacao)	values ("Carol",18,9.0,true);

select * from tb_alunos;

select * from tb_alunos where nota<7;
select * from tb_alunos where nota>7;

update tb_alunos set idade = 17 where id = 2;













