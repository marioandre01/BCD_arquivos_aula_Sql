show databases;

use bcd;

select * from campus;

select * from curso;

select * from campus inner join curso on campus.id=curso.campus;

select * from campus inner join curso;

select campus.nome, curso.nome from campus inner join curso on campus.id=curso.campus;

desc curriculo;

select campus.nome, curso.nome, curriculo.implantacao, disciplina.nome, disciplina.CH
from campus
inner join curso on campus.id=curso.campus
inner join curriculo on curriculo.curso=curso.id
inner join disciplina on disciplina.id=curriculo.disciplina;

select curso.nome as curso, sum(disciplina.CH) as 'carga horaria'
from campus
inner join curso on campus.id=curso.campus
inner join curriculo on curriculo.curso=curso.id
inner join disciplina on disciplina.id=curriculo.disciplina
group by curso;

select * from disciplina;

#select disciplina.CH as 'carga horaria'

drop view resumo;

create view resumo as
select
        curso.numero as 'Código do Curso',
        curso.nome as 'Nome do Curso',
        curriculo.implantacao as 'Data de Implantação',
        disciplina.codigo as 'Código da Disciplina',
        disciplina.nome as 'Nome da Disciplina'
from curso
inner join curriculo
on curso.id = curriculo.curso
inner join disciplina
on disciplina.id = curriculo.disciplina;

select * from resumo;

