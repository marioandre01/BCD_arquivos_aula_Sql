show tables;

select * from aluno;

insert into aluno(nome, documento, telefone, email)
	values ('Mario André', '12345', '4891476345', 'mario_andre.l.a@hotmail.com');
    
    select * from matricula;
    
    insert into matricula(numero, aluno, curso)
	values('1510046739', 
		   (select id from  aluno  where documento = '12345'),
           (select id from  curso  where numero = '290')
);

select * from campus;
select * from curso;


insert into curso(numero, CHmin, CHmax, nome, campus)
	values( '290', '216','612','Engenharia de Telecomunicações',
    (select id from campus where nome = 'São José')
);

select curso.numero as Número, curso.nome as Curso, campus.nome as Câmpus 
from curso inner join campus on campus.id = curso.campus;

CREATE TABLE  IF NOT EXISTS PedidoDeMatrícula(
    id int unsigned auto_increment primary key,
    sessao char(32),
    tipo tinyint unsigned not null,
    matricula int unsigned not null,
    disciplina smallint unsigned not null,
    constraint fk_pedidodematricula_matricula_matricula_id
      foreign key (matricula) references matricula(id),
    constraint fk_pedidodematricula_disciplina_disciplina_id
      foreign key (disciplina) references disciplina(id)
    
);

select * from PedidoDeMatrícula;
delete from PedidoDeMatrícula;

insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from aluno where aluno.nome = 'Ederson Torresini'),
                (select id from disciplina where codigo like 'CAL29001')
        ),
        (
                '1',
                (select id from aluno where aluno.nome = 'Ederson Torresini'),
                (select id from disciplina where codigo like 'LOG29001')
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
        
        insert into matricula(numero, aluno, curso)
values('1310002576', 
        (select id from  aluno  where documento = '123456'),
        (select id from  curso  where numero = '290')
);

insert into aluno(nome, documento, telefone, email)
values ('Stephany Padilha Guimarães', '123456', '4812345678', 'stephany.g@aluno.ifsc.edu.br');
    
    
    
    drop view if exists coluna1;
    
    create view coluna1 as select ('1');
    select * from coluna1;
    
    drop view if exists coluna2;
    create view coluna2 as select ('1');
    select * from coluna2;
    
    drop view if exists coluna3;
    create view coluna3 as
    select id
    from disciplina
    where codigo like '%29001';
    select * from coluna3;
    
    create view gambiarra as
    select *
    from coluna1
    inner join coluna2
    inner join coluna3;
    
    
