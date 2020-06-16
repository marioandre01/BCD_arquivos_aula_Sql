#povoação_pedido_de_matricula

 /*
Mapeamento dos tipos:
- 0: validação
- 1: pedido de matrícula regular
- 2: pedido de reajuste
*/

insert into aluno(nome, documento, telefone, email)
	values ('Ederson Torresini', '12345', '33812821', 'etorresini@ifsc.edu.br'),
		   ('Stephany Padilha Guimarães', '123456', '4812345678', 'stephany.g@aluno.ifsc.edu.br');

insert into matricula(numero, aluno, curso)
	values('162000147', 
		  (select id from  aluno  where documento = '12345'),
		  (select id from  curso  where numero = '290')),
          
          ('1310002576', 
          (select id from  aluno  where documento = '123456'),
          (select id from  curso  where numero = '290')
);

desc PedidoDeMatrícula;

#Matrícula 1ª-fase
insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'DES29001')
        ),
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'CAL29001')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'ELI29001')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'FSC29001')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'GAL29001')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'LOG29001')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'PJI29001')
        );
        
#Matrícula 2ª-fase
insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'QMC29002')
        ),
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'CAL29002')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'CIE29002')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'FSC29002')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'ALG29002')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'PRG29002')
        );
        
#Matrícula 3ª-fase
insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'QMC29003')
        ),
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'CAL29003')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'CIE29003')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'ELA29003')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'CIL29003')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'PRG29003')
        );
        
#Matrícula 4ª-fase
insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'MEC29004')
        ),
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'CAL29004')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'RED29004')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'ELA29004')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'MIC29004')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'POO29004')
        );
        
#Matrícula 5ª-fase
insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'MPQ29005')
        ),
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'EST29005')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'RED29005')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'FSC29005')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'SOP29005')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'SIS29005')
        );
        
#Matrícula 6ª-fase
insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'FEN29006')
        ),
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'PRE29006')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'ANT29006')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'STD29006')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'DLP29006')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'SIS29006')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'PJI29006')
        );
        
#Matrícula 7ª-fase
insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'PTG29007')
        ),
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'RTX29007')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'MTG29007')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'DLP29007')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'PSD29007')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'COM29007')
        );
        
#Matrícula 8ª-fase
insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'ADM29008')
        ),
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'CSF29008')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'BCD29008')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'STE29008')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'PTC29008')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'COM29008')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'PJI29008')
        );
        
#Matrícula 9ª-fase
insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'ECO29009')
        ),
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'SUS29009')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'SMU29009')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'ADS29009')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'STC29009')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'CRF29009')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'TCC29009')
        );
        
#Matrícula 10ª-fase
insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'EST29010')
        ),
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'TCC29010')
        );
        
select * from PedidoDeMatrícula;

drop view if exists pedido_matricula_disciplina;

create view pedido_matricula_disciplina as
select
        matricula.numero as 'Matrícula',
        aluno.nome as 'Aluno',
        disciplina.nome as 'Disciplina',
        disciplina.codigo as 'Código da disciplina'
        
        
from PedidoDeMatrícula
inner join matricula
on matricula.id = PedidoDeMatrícula.matricula
inner join aluno
on aluno.id = matricula.aluno
inner join disciplina
on disciplina.id = PedidoDeMatrícula.disciplina;
#WHERE matricula.numero='162000147'; #Descomente essa linha para mostrar numero de matrícula especifico

select * from pedido_matricula_disciplina;
        
        