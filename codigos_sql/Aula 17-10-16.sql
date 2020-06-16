select * from PedidoDeMatrícula;
delete from PedidoDeMatrícula;

select * from aluno;
select * from matricula;


insert into aluno(nome, documento, telefone, email)
values ('Stephany Padilha Guimarães', '123456', '4812345678', 'stephany.g@aluno.ifsc.edu.br');

insert into matricula(numero, aluno, curso)
values('1310002576', 
        (select id from  aluno  where documento = '123456'),
        (select id from  curso  where numero = '290')
);

insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'CAL29001')
        ),
        (
                '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'LOG29001')
        ),
        (        '1',
                (select id from aluno where aluno.documento = '123456'),
                (select id from disciplina where codigo like 'DES29001')
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
                (select id from disciplina where codigo like 'PJI29001')
        );
        
        
#matrícula 8ª-fase sem pré-requisitos
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
        
        #carga horaria minima de Banco de Dados
        select CHmin from disciplina where codigo = 'BCD29008';
        
        # Disciplinas Cursadas po aluna Stephany
        #select * from DisciplinasCursadas where matricula = '123456';
        select * from DisciplinasCursadas where matricula = '2';
        
desc DisciplinasCursadas;
        
select * from DisciplinasCursadas;

insert into DisciplinasCursadas(matricula, disciplina)
        values
        (
        (select id from matricula where numero = '1310002576'),
        (select id from disciplina where codigo = 'CAL29001')        
        );
        
        select * from matricula;
        
        
        #Disciplina cursadas por aluma Stephany
        select sum(CH)
from DisciplinasCursadas
inner join disciplina
on disciplina.id = DisciplinasCursadas.disciplina
where matricula = (select id from matricula where numero = '1310002576');

#Disciplinas na vertical de Bancos de dados
select preRequisito
from preRequisito
where disciplina = (select id from disciplina where codigo = 'BCD29008')
and eixo = true;

#Stephany ja cursou todos os pré-requesitos?
select disciplina 
from DisciplinasCursadas
where matricula = (select id from matricula where numero = '1310002576');

select * from preRequisito;

select * from DisciplinasCursadas;


drop view if exists BCD;
create view BCD as
select preRequisito as esquerda
from preRequisito
where disciplina = (select id from disciplina where codigo = 'BCD29008')
and eixo = true;
select * from BCD;

drop view if exists Stephany;
create view Stephany as
select disciplina as direita
from DisciplinasCursadas
where matricula = (select id from matricula where numero = '1310002576');
select * from Stephany;

drop view if exists StephanyCursouPreRequesito;
create view StephanyCursouPreRequesito as 
select *
from BCD
left join Stephany
on esquerda = direita;
select * from StephanyCursouPreRequesito;

#select count(esquerda)
#from StephanyCursouPreRequesito
#where direita is null;

select count(resultado.esquerda) as 'Quantidade de pré-requisitos não atendidos'
from (
        select *
        from (
                select preRequisito as esquerda
                from preRequisito
                where disciplina = (
                        select id
                        from disciplina
                        where codigo = 'BCD29008'
                )
                and eixo = true
        ) as a
        left join (
                select disciplina as direita
                from DisciplinasCursadas
                where matricula = (
                        select id
                        from matricula
                        where numero = '1310002576'
                )
        ) as b
        on a.esquerda = b.direita
) as resultado
where resultado.direita is null;



        

        
        
        