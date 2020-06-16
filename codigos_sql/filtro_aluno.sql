
drop view if exists filtro_aluno;

create view filtro_aluno as
select
        matricula.numero as 'Matrícula',
        aluno.nome as 'Aluno',
        aluno.documento as 'CPF',
        curso.nome as 'Curso'
        
from matricula
inner join curso
on curso.id = matricula.curso
inner join aluno
on aluno.id = matricula.aluno;
#WHERE matricula.numero='162000147'; #Descomente essa linha para mostrar numero de matrícula especifico

select * from filtro_aluno;

#select filtro_aluno.CPF from filtro_aluno;


