 -- exerciocio1
 -- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
 -- trabalhará com as informações dos funcionários desta empresa.
create database db_rh;


use db_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar (255) not null,
idade int not null,
cargo varchar(255) not null,
salario float not null,
primary key(id)
);
insert into tb_funcionarios(nome,idade,cargo,salario) values ("Pedro","19","Estagiario","1800");
insert into tb_funcionarios(nome,idade,cargo,salario) values ("Fernanda","22","Vendedora","2000");
insert into tb_funcionarios(nome,idade,cargo,salario) values ("Marcelo","30","Gerente","3000");

select * from tb_funcionarios where salario >2000;
select * from tb_funcionarios where salario <2000;
select * from tb_funcionarios;

update tb_funcionarios set tb_funcionarios.salario = 2000 where id = 1;





 
