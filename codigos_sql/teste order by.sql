create table funcionarios (
codigo int not null primary key,
primeiroNome varchar (15),
segundoNome varchar (15),
ultimoNome varchar (15),
cpf varchar (15),
rg varchar (10),
endereco varchar (80),
cep varchar (11),
cidade varchar (10),
funcao varchar (15),
salario decimal (10,2)
);
 
create table departamentos (
codigo int not null primary key,
nome varchar (30),
localizacao varchar (10)
);
 
insert into departamentos
values (1, 'Financeiro', 'Bloco A'), 
	   (2, 'Recursos Humanos', 'Bloco B'), 
       (3, 'Administração', 'Bloco A');
 
insert into funcionarios
values (1, 'Andrielle', 'Azevedo', 'Paula', '02570119199', '6574912', 'Travessa Amelio Marques', '75510290', 'Itumbiara', 'Treinamento', 1500.00), 
       (2, 'Luiza', 'Silva', 'Faria', '03461929199', '6574912', 'Rua Pedro Heleodorio', '75510190', 'Itumbiara', 'Contador', 1000.00), 
       (3, 'Henrique', 'Paiva', 'Mendes', '43152718177', '3142827', 'Avenida Beira Rio', '12416190', 'Itumbiara', 'Gerente', 5000.00);
       
#Listar nome e sobrenome ordenados por sobrenome
select primeiroNome, ultimoNome
from funcionarios
order by ultimoNome;

#Listar os funcionários que têm salário superior a 1000,00 em ordem ascendente
select * from funcionarios
where salario > 1000
order by primeiroNome asc;

#Listar o primeiro nome dos funcionários em ordem descendente
select primeiroNome from funcionarios
order by primeiroNome desc;

       