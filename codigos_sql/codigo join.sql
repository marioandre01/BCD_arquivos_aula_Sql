create view resumo as

select 
	curso.numero as "Código do Curso",
	curso.nome as "Nome do Curso",
	curriculo.implantacao as "Data de implantação",
    disciplina.nome as "Nome de Disciplina"
    
from curso
inner join curriculo
on curso.id = curriculo.curso
inner join disciplina
on disciplina.id = curriculo.disciplina;