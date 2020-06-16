drop view if exists resumo3;

create view  resumo3 as

select * 
from disciplina
where codigo regexp 'red'
or codigo regexp 'smu'
or codigo regexp 'ads'
or codigo regexp 'ptc';

select sum(CH) from resumo3;