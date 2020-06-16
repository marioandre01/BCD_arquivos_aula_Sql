use api;

DROP TABLE IF EXISTS TabelaB;
DROP TABLE IF EXISTS TabelaA;

CREATE TABLE IF NOT EXISTS TabelaA(
  Nome varchar(50) NULL
);
      
CREATE TABLE IF NOT EXISTS TabelaB(
  Nome varchar(50) NULL
);


INSERT INTO TabelaA VALUES('Fernanda');
INSERT INTO TabelaA VALUES('Josefa');
INSERT INTO TabelaA VALUES('Luiz');
INSERT INTO TabelaA VALUES('Fernando');
   
INSERT INTO TabelaB VALUES('Carlos');
INSERT INTO TabelaB VALUES('Manoel');
INSERT INTO TabelaB VALUES('Luiz');
INSERT INTO TabelaB VALUES('Fernando');

select * from TabelaA;

select * from TabelaB;

##uso do inner join - retorna os registros que são comuns às duas tabelas
SELECT TabelaA.Nome as A, TabelaB.Nome as B
FROM TabelaA INNER JOIN TabelaB 
on TabelaA.Nome = TabelaB.Nome;


/*uso do left join - tem como resultado todos os registros que estão na 
tabela A (mesmo que não estejam na tabela B) e os registros da tabela B que 
são comuns à tabela A*/
SELECT TabelaA.Nome as A, TabelaB.Nome as B
FROM TabelaA LEFT JOIN TabelaB 
on TabelaA.Nome = TabelaB.Nome;


/*uso do right join - tem como resultado todos os registros que estão na 
tabela B (mesmo que não estejam na tabela A) e os registros da tabela A que são 
comuns à tabela B*/
SELECT TabelaA.Nome as A, TabelaB.Nome as B
FROM TabelaA RIGHT JOIN TabelaB 
on TabelaA.Nome =TabelaB.Nome;

/*outer join (ou full ouert join) - tem como resultado todos os registros que estão 
na tabela A e todos os registros da tabela B*/
SELECT TabelaA.Nome as A, TabelaB.Nome as B
FROM TabelaA full join TabelaB 
on TabelaA.Nome = TabelaB.Nome;

/*Left Excluding Join - retorna como resultado todos os registros que estão na 
tabela A e que não estejam na tabela B*/
SELECT TabelaA.Nome as A, TabelaB.Nome as B
FROM TabelaA left join TabelaB 
on TabelaA.Nome = TabelaB.Nome
WHERE TabelaB.Nome is null;

/*Right Excluding Join - retorna como resultado todos os registros que estão na 
tabela B e que não estejam na tabela A*/
SELECT TabelaA.Nome as A, TabelaB.Nome as B
FROM TabelaA right join TabelaB 
on TabelaA.Nome = TabelaB.Nome
WHERE TabelaA.Nome is null;

/*Outer Excluding Join- teremos como resultado todos os registros que estão na 
tabela B, mas que não estejam na tabela A, e todos os registros que estão na 
tabela A, mas que não estejam na tabela B*/
SELECT TabelaA.Nome as A, TabelaB.Nome as B
FROM TabelaA FULL JOIN TabelaB 
on TabelaA.Nome = TabelaB.Nome
WHERE TabelaA.Nome is null or TabelaB.Nome is null;



