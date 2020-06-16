insert into campus(nome) values ('São José');



/*
Referências para a listagem das disciplinas e pré-requisitos:
- Rede Curricular: http://wiki.sj.ifsc.edu.br/wiki/index.php/Rede_Curricular_da_Engenharia_de_Telecomunica%C3%A7%C3%B5es
- Páginas das disciplinas: http://wiki.sj.ifsc.edu.br/wiki/index.php/Engenharia_de_Telecomunica%C3%A7%C3%B5es_(p%C3%A1ginas_das_disciplinas)
*/

-- Disciplinas

-- FASE 1
insert into disciplina(codigo, nome, CH, CHmin)
values
    ('DES29001', 'Desenho técnico', '36', '0'),
    ('CAL29001', 'Cálculo I', '72', '0'),
    ('ELI29001', 'Eletricidade e Instrumentação', '72', '0'),
    ('LOG29001', 'Lógica', '36', '0'),
    ('PJI29001', 'Projeto Integrador I', '54', '0'),
    ('FSC29001', 'Física I', '72', '0'),
    ('GAL29001', 'Geometria Analítica', '54', '0');

-- FASE 2
insert into disciplina(codigo, nome, CH, CHmin)
values
    ('CAL29002', 'Cálculo II', '72', '0'),
    ('QMC29002', 'Química Geral', '54', '0'),
    ('CIE29002', 'Circuitos Elétricos I', '72', '0'),
    ('FSC29002', 'Física II', '72', '0'),
    ('ALG29002', 'Álgebra Linear', '54', '0'),
    ('PRG29002', 'Programação I', '72', '0');

-- FASE 3
insert into disciplina(codigo, nome, CH, CHMin)
values
    ('CAL29003', 'Cálculo III', '72', '0'),
    ('QMC29003', 'Ciência e Tecnologia dos Materiais', '36', '0'),
    ('CIE29003', 'Circuitos Elétricos II', '72', '0'),
    ('ELA29003', 'Eletrônica I', '72', '0'),
    ('CIL29003', 'Circuitos Lógicos', '72', '0'),
    ('PRG29003', 'Programação II', '72', '0');

-- FASE 4
insert into disciplina(codigo, nome, CH, CHMin)
values
    ('MEC29004', 'Mecânica dos Sólidos', '36', '0'),
    ('CAL29004', 'Cálculo IV', '72', '0'),
    ('RED29004', 'Redes de Computadores I', '72', '0'),
    ('ELA29004', 'Eletrônica II', '72', '0'),
    ('MIC29004', 'Microprocessadores', '72', '0'),
    ('POO29004', 'Programação Orientada a Objetos', '72', '0');

-- FASE 5
insert into disciplina(codigo, nome, CH, CHmin)
values
    ('MPQ29005', 'Metodologia de Pesquisa', '36', '0'),
    ('EST29005', 'Estatística e Probabilidade', '54', '0'),
    ('RED29005', 'Redes de Computadores II', '72', '0'),
    ('FSC29005', 'Física III', '90', '0'),
    ('SOP29005', 'Sistemas Operacionais', '72', '0'),
    ('SIS29005', 'Sinais e Sistemas I', '72', '0');

-- FASE 6
insert INTO disciplina(codigo, nome, CH, CHmin)
values
    ('FEN29006', 'Fenômenos de Transportes', '36', '0'),
    ('PRE29006', 'Processos Estocásticos', '54', '0'),
    ('ANT29006', 'Antenas e Propagação', '72', '0'),
    ('STD29006', 'Sistemas Distribuídos', '54', '0'),
    ('DLP29006', 'Dispositivos Lógicos Programáveis I', '90', '0'),
    ('SIS29006', 'Sinais e Sistemas II', '54', '0'),
    ('PJI29006', 'Projeto Integrador II', '36', '0');

-- FASE 7
insert INTO disciplina(codigo, nome, CH, CHmin)
values
    ('PTG29007', 'Comunicação e Expressão', '36', '1980'),
    ('RTX29007', 'Redes de Transmissão', '72', '0'),
    ('MTG29007', 'Meios de Transmissão Guiados', '72', '0'),
    ('DLP29007', 'Dispositivos Lógicos Programáveis II', '54', '0'),
    ('PSD29007', 'Processamento de Sinais Digitais', '72', '0'),
    ('COM29007', 'Sistemas de Comunicação I', '90', '0');

-- FASE 8
insert INTO disciplina(codigo, nome, CH, CHmin)
values
    ('BCD29008', 'Bancos de Dados', '54', '0'),
    ('STE29008', 'Sistemas Embarcados', '72', '0'),
    ('PJI29008', 'Projeto Integrador III', '36', '0'),
    ('COM29008', 'Sistemas de Comunicação II', '72', '0'),
    ('PTC29008', 'Projeto de Protocolos', '54', '0'),
    ('CSF29008', 'Comunicações sem Fio', '72', '0'),
    ('ADM29008', 'Administração para Engenharia', '36', ' 1980');

-- FASE 9
insert INTO disciplina(codigo, nome, CH, CHmin)
values
    ('ECO29009', 'Economia para Engenharia', '36', '1980'),
    ('SUS29009', 'Engenharia e Sustentabilidade', '36', '0'),
    ('SMU29009', 'Sistemas Multimídia', '54', '0'),
    ('ADS29009', 'Avaliação de Desempenho de Sistemas', '54', '0'),
    ('STC29009', 'Sistemas de Telecomunicação', '72', '0'),
    ('CRF29009', 'Circuitos de Rádio-Frequência', '72', '0'),
    ('TCC29009', 'Trabalho de Conclusão de Curso I', '36', '2160');

-- FASE 10
insert INTO disciplina(codigo, nome, CH, CHmin)
values
    ('EST29010', 'Estágio Obrigatório', '360', '2160'),
    ('TCC29010', 'Trabalho de Conclusão de Curso II', '108', '2560');


/*
Pré-requisitos
Tradução dos valores binários:
- Primeiro valor:
  - obrigatório: true;
  - recomendado: false.
- Segundo campo:
  - Eixo vertical (fases anteriores): true;
  - Eixo horizontal (disciplinas paralelas): false.
*/

-- Equipe 1
insert into preRequisito(obrigatorio, eixo, disciplina, preRequisito)
values
    (
        true,
        true,
        (select id from disciplina where codigo = 'PTC29008'),
        (select id from disciplina where codigo = 'RED29005')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'PTC29008'),
        (select id from disciplina where codigo = 'PRG29003')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'CSF29008'),
        (select id from disciplina where codigo = 'ANT29006')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'CSF29008'),
        (select id from disciplina where codigo = 'PRE29006')
    );

-- Equipe 2
insert into preRequisito(obrigatorio, eixo,disciplina, preRequisito)
values
    (
        true,
        true,
        (select id from disciplina where codigo = 'CAL29002'),
        (select id from disciplina where codigo = 'CAL29001')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'CIE29002'),
        (select id from disciplina where codigo = 'CAL29001')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'CIE29002'),
        (select id from disciplina where codigo = 'ELI29001')
    ),
    (
        false,
        false,
        (select id from disciplina where codigo = 'CIE29002'),
        (select id from disciplina where codigo = 'ALG29002')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'FSC29002'),
        (select id from disciplina where codigo = 'FSC29001')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'FSC29002'),
        (select id from disciplina where codigo = 'CAL29001')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'ALG29002'),
        (select id from disciplina where codigo = 'GAL29001')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'FSC29002'),
        (select id from disciplina where codigo = 'LOG29001')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'PJI29008'),
        (select id from disciplina where codigo = 'PJI29006')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'PJI29008'),
        (select id from disciplina where codigo = 'PSD29007')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'PJI29008'),
        (select id from disciplina where codigo = 'COM29007')
    ),
    (
        true,
        false,
        (select id from disciplina where codigo = 'PJI29008'),
        (select id from disciplina where codigo = 'STE29008')
    ),
    (
        true,
        false,
        (select id from disciplina where codigo = 'PJI29008'),
        (select id from disciplina where codigo = 'DLP29007')
    ),
    (
        false,
        true,
        (select id from disciplina where codigo = 'PJI29008'),
        (select id from disciplina where codigo = 'ANT29006')
    ),
    (
        false,
        true,
        (select id from disciplina where codigo = 'PJI29008'),
        (select id from disciplina where codigo = 'RTX29007')
    ),
    (
        false,
        true,
        (select id from disciplina where codigo = 'PJI29008'),
        (select id from disciplina where codigo = 'MTG29007')
    ),
    (
        false,
        true,
        (select id from disciplina where codigo = 'PJI29008'),
        (select id from disciplina where codigo = 'ELA29004')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'COM29008'),
        (select id from disciplina where codigo = 'COM29007')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'STE29008'),
        (select id from disciplina where codigo = 'SOP29005')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'BCD29008'),
        (select id from disciplina where codigo = 'POO29004')
    );

-- Equipe 3
insert into preRequisito(obrigatorio, eixo, disciplina, preRequisito)
values
    (
        true,
        true,
        (select id from disciplina where codigo = 'CAL29003'),
        (select id from disciplina where codigo = 'CAL29002')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'CAL29003'),
        (select id from disciplina where codigo = 'GAL29001')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'QMC29003'),
        (select id from disciplina where codigo='QMC29002')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'CIE29003'),
        (select id from disciplina where codigo = 'CAL29002')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'CIE29003'),
        (select id from disciplina where codigo = 'CIE29002')
    ),
    (
        false,
        true,
        (select id from disciplina where codigo = 'ELA29003'),
        (select id from disciplina where codigo='QMC29002')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'ELA29003'),
        (select id from disciplina where codigo = 'CIE29002')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'ELA29003'),
        (select id from disciplina where codigo = 'CAL29001')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'CIL29003'),
        (select id from disciplina where codigo ='LOG29001')
    ),
    (
        false,
        false,
        (select id from disciplina where codigo = 'CIL29003'),
        (select id from disciplina where codigo ='ELA29003')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'PRG29003'),
        (select id from disciplina where codigo ='PRG29002')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'SMU29009'),
        (select id from disciplina where codigo ='RED29005')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'ADS29009'),
        (select id from disciplina where codigo = 'PTC29008')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'ADS29009'),
        (select id from disciplina where codigo = 'PRE29006')
    );

-- Equipe 4
insert into preRequisito(obrigatorio, eixo, disciplina, preRequisito)
values
    (
        true,
        true,
        (select id from disciplina where codigo = 'MEC29004'),
        (select id from disciplina where codigo = 'FSC29001')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'MEC29004'),
        (select id from disciplina where codigo = 'CAL29002')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'CAL29004'),
        (select id from disciplina where codigo = 'CAL29002')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'RED29004'),
        (select id from disciplina where codigo = 'CIL29003')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'ELA29004'),
        (select id from disciplina where codigo = 'ELA29003')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'ELA29004'),
        (select id from disciplina where codigo = 'CAL29003')
    ),
    (
        false,
        true,
        (select id from disciplina where codigo = 'ELA29004'),
        (select id from disciplina where codigo = 'CIE29003')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'MIC29004'),
        (select id from disciplina where codigo = 'CIL29003')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'POO29004'),
        (select id from disciplina where codigo = 'PRG29003')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'STC29009'),
        (select id from disciplina where codigo = 'COM29007')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'STC29009'),
        (select id from disciplina where codigo = 'RTX29007')
    ),
    (
        false,
        true,
        (select id from disciplina where codigo = 'STC29009'),
        (select id from disciplina where codigo = 'COM29008')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'CRF29009'),
        (select id from disciplina where codigo = 'COM29007')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'CRF29009'),
        (select id from disciplina where codigo = 'DLP29006')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'CRF29009'),
        (select id from disciplina where codigo = 'ANT29006')
    ),
    (
        false,
        true,
        (select id from disciplina where codigo = 'TCC29009'),
        (select id from disciplina where codigo = 'PTG29007')
    ),
    (
        false,
        true,
        (select id from disciplina where codigo = 'TCC29009'),
        (select id from disciplina where codigo = 'MPQ29005')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'TCC29010'),
        (select id from disciplina where codigo = 'TCC29009')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'TCC29010'),
        (select id from disciplina where codigo = 'PJI29008')
    ),
    (
        false,
        true,
        (select id from disciplina where codigo = 'EST29010'),
        (select id from disciplina where codigo = 'PTG29007')
    );

-- Equipe 5
insert into preRequisito(obrigatorio, eixo,disciplina, preRequisito)
values
    (
        true,
        true,
        (select id from disciplina where codigo = 'DLP29007'),
        ( select id from disciplina where codigo = 'DLP29006')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'DLP29007'),
        (select id from disciplina where codigo = 'MIC29004')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'MTG29007'),
        (select id from disciplina where codigo = 'FSC29005')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'MTG29007'),
        ( select id from disciplina where codigo = 'SIS29006')
    ),
    (
        false,
        true,
        (select id from disciplina where codigo = 'MTG29007'),
        ( select id from disciplina where codigo = 'QMC29003')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'RTX29007'),
        (select id from disciplina where codigo = 'RED29004')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'RTX29007'),
        (select id from disciplina where codigo = 'SIS29006')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'SIS29005'),
        (select id from disciplina where codigo = 'CAL29004')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'SIS29005'),
        (select id from disciplina where codigo = 'ALG29002')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'SIS29005'),
        (select id from disciplina where codigo = 'CIE29003')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'SOP29005'),
        (select id from disciplina where codigo = 'PRG29003')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'SOP29005'),
        (select id from disciplina where codigo = 'MIC29004')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'FSC29005'),
        (select id from disciplina where codigo = 'FSC29001')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'FSC29005'),
        (select id from disciplina where codigo = 'CAL29003')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'RED29005'),
        (select id from disciplina where codigo = 'RED29004')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'EST29005'),
        (select id from disciplina where codigo = 'CAL29001')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'EST29005'),
        (select id from disciplina where codigo = 'CAL29001')
    );

-- Equipe 6
insert into preRequisito(obrigatorio, eixo, disciplina, preRequisito)
values
    (
        true,
        true,
        (select id from disciplina where codigo = 'FEN29006'),
        (select id from disciplina where codigo = 'FSC29002')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'PRE29006'),
        (select id from disciplina where codigo = 'EST29005')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'PRE29006'),
        (select id from disciplina where codigo = 'CAL29004')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'ANT29006'),
        (select id from disciplina where codigo= 'FSC29005')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'STD29006'),
        (select id from disciplina where codigo = 'RED29004')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'STD29006'),
        (select id from disciplina where codigo = 'SOP29005')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'STD29006'),
        (select id from disciplina where codigo = 'POO29004')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'DLP29006'),
        (select id from disciplina where codigo = 'CIL29003')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'SIS29006'),
        (select id from disciplina where codigo = 'SIS29005')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'PJI29006'),
        (select id from disciplina where codigo = 'PJI29001')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'PJI29006'),
        (select id from disciplina where codigo = 'RED29005')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'PJI29006'),
        (select id from disciplina where codigo = 'MIC29004')
    ),
    (
        true,
        false,
        (select id from disciplina where codigo = 'PJI29006'),
        (select id from disciplina where codigo = 'STD29006')
    ),
    (
        false,
        true,
        (select id from disciplina where codigo = 'PJI29006'),
        (select id from disciplina where codigo = 'MPQ29005')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'PSD29007'),
        (select id from disciplina where codigo = 'SIS29006')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'PSD29007'),
        (select id from disciplina where codigo = 'DLP29006')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'COM29007'),
        (select id from disciplina where codigo = 'SIS29006')
    ),
    (
        true,
        true,
        (select id from disciplina where codigo = 'COM29007'),
        (select id from disciplina where codigo = 'PRE29006')
);

insert into curso(numero, CHmin, CHmax, nome, campus)
	values( '290', '216','612','Engenharia de Telecomunicações',
    (select id from campus where nome = 'São José')
);

insert into curriculo(curso, implantacao, disciplina)
	values((select id from curso where numero = '290'), '2012-03-12', (select id from disciplina where codigo = 'LOG29001')),
		  ((select id from curso where numero = '290'), '2012-03-12', (select id from disciplina where codigo = 'DES29001'));

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

 /*
Mapeamento dos tipos:
- 0: validação
- 1: pedido de matrícula regular
- 2: pedido de reajuste
*/

#Matrícula 1ª-fase
insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'DES29001')
        ),
        (
                '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'CAL29001')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'ELI29001')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'FSC29001')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'GAL29001')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'LOG29001')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'PJI29001')
        );
        
#Matrícula 2ª-fase
insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'QMC29002')
        ),
        (
                '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'CAL29002')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'CIE29002')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'FSC29002')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'ALG29002')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'PRG29002')
        );
        
#Matrícula 3ª-fase
insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'QMC29003')
        ),
        (
                '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'CAL29003')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'CIE29003')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'ELA29003')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'CIL29003')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'PRG29003')
        );
        
#Matrícula 4ª-fase
insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'MEC29004')
        ),
        (
                '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'CAL29004')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'RED29004')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'ELA29004')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'MIC29004')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'POO29004')
        );
        
#Matrícula 5ª-fase
insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'MPQ29005')
        ),
        (
                '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'EST29005')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'RED29005')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'FSC29005')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'SOP29005')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'SIS29005')
        );
        
#Matrícula 6ª-fase
insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'FEN29006')
        ),
        (
                '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'PRE29006')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'ANT29006')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'STD29006')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'DLP29006')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'SIS29006')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'PJI29006')
        );
        
#Matrícula 7ª-fase
insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'PTG29007')
        ),
        (
                '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'RTX29007')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'MTG29007')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'DLP29007')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'PSD29007')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'COM29007')
        );
        
#Matrícula 8ª-fase
insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'ADM29008')
        ),
        (
                '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'CSF29008')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'BCD29008')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'STE29008')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'PTC29008')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'COM29008')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'PJI29008')
        );
        
#Matrícula 9ª-fase
insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'ECO29009')
        ),
        (
                '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'SUS29009')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'SMU29009')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'ADS29009')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'STC29009')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'CRF29009')
        ),
        (        '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'TCC29009')
        );
        
#Matrícula 10ª-fase
insert into PedidoDeMatrícula(tipo, matricula, disciplina)
values
        (
                '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'EST29010')
        ),
        (
                '1',
                (select id from matricula where matricula.numero = '1310002576'),
                (select id from disciplina where codigo like 'TCC29010')
        );
        
insert into professor(nome, documento, campus)
    	values
     	(
    	'Emerson Ribeiro de Mello',
    	'1234567890',
    	(select id from campus where nome = 'São José')
    	),  
     	(
    	'Eraldo Silveira e Silva',
    	'0123456789',
    	(select id from campus where nome = 'São José')
    	), 
     	(
    	'Jorge Henrique Busatto Casagrande',
    	'9012345678',
    	(select id from campus where nome = 'São José')
    	),
     	(
    	'Marcelo Maia Sobral',
    	'8901234567',
    	(select id from campus where nome = 'São José')
    	),
     	(
    	'Marcos Moecke',
    	'7890123456',
    	(select id from campus where nome = 'São José')
    	),
     	(
    	'Mario de Noronha Neto',
    	'6789012345',
    	(select id from campus where nome = 'São José')
    	),
     	(
    	'Pedro Armando da Silva Júnior',
    	'5678901234',
    	(select id from campus where nome = 'São José')
    	),
     	(
    	'Roberto Wanderley da Nóbrega',
    	'4567890123',
    	(select id from campus where nome = 'São José')
    	),
     	(
    	'Saul Silva Caetano',
    	'3456789012',
    	(select id from campus where nome = 'São José')
    	),
     	(
    	'Tiago Semprebom',
    	'2345678901',
    	(select id from campus where nome = 'São José')
    	);



insert into MinistradoresDasDisciplinas(disciplina, professor)
	values
    (
    (select id from disciplina where codigo = 'STD29006'),
    (select id from professor where documento = '1234567890')
    ),
	(
    (select id from disciplina where codigo = 'POO29004'),
    (select id from professor where documento = '1234567890')
    );
    
insert into MinistradoresDasDisciplinas(disciplina, professor)
	values
    (
    (select id from disciplina where codigo = 'PJI29001'),
    (select id from professor where documento = '0123456789')
    ),
	(
    (select id from disciplina where codigo = 'PRG29002'),
    (select id from professor where documento = '0123456789')
    ),
	(
    (select id from disciplina where codigo = 'ADS29009'),
    (select id from professor where documento = '0123456789')
    );    
    
insert into MinistradoresDasDisciplinas(disciplina, professor)
	values
    (
    (select id from disciplina where codigo = 'RED29005'),
    (select id from professor where documento = '9012345678')
    ); 
    
insert into MinistradoresDasDisciplinas(disciplina, professor)
	values
    (
    (select id from disciplina where codigo = 'PRG29003'),
    (select id from professor where documento = '8901234567')
    ),
	(
    (select id from disciplina where codigo = 'PTC29008'),
    (select id from professor where documento = '8901234567')
    );    
    
insert into MinistradoresDasDisciplinas(disciplina, professor)
	values
	(
    (select id from disciplina where codigo = 'DLP29006'),
    (select id from professor where documento = '7890123456')
    ),
	(
    (select id from disciplina where codigo = 'CIL29003'),
    (select id from professor where documento = '7890123456')
    ),
    (
    (select id from disciplina where codigo = 'PSD29007'),
    (select id from professor where documento = '7890123456')
    ),
	(
    (select id from disciplina where codigo = 'DLP29007'),
    (select id from professor where documento = '7890123456')
    );     
    
insert into MinistradoresDasDisciplinas(disciplina, professor)
	values
	(
    (select id from disciplina where codigo = 'COM29007'),
    (select id from professor where documento = '6789012345')
    ),
	(
    (select id from disciplina where codigo = 'CSF29008'),
    (select id from professor where documento = '6789012345')
    );
    
insert into MinistradoresDasDisciplinas(disciplina, professor)
	values
	(
    (select id from disciplina where codigo = 'ELI29001'),
    (select id from professor where documento = '5678901234')
    ),
	(
    (select id from disciplina where codigo = 'ELA29003'),
    (select id from professor where documento = '5678901234')
    );

insert into MinistradoresDasDisciplinas(disciplina, professor)
	values
	(
    (select id from disciplina where codigo = 'PRE29006'),
    (select id from professor where documento = '4567890123')
    ),
	(
    (select id from disciplina where codigo = 'COM29008'),
    (select id from professor where documento = '4567890123')
    );
    
insert into MinistradoresDasDisciplinas(disciplina, professor)
	values
	(
    (select id from disciplina where codigo = 'PJI29001'),
    (select id from professor where documento = '3456789012')
    ),
	(
    (select id from disciplina where codigo = 'MTG29007'),
    (select id from professor where documento = '3456789012')
    );
    
insert into MinistradoresDasDisciplinas(disciplina, professor)
	values
	(
    (select id from disciplina where codigo = 'LOG29001'),
    (select id from professor where documento = '2345678901')
    ),
	(
    (select id from disciplina where codigo = 'RED29004'),
    (select id from professor where documento = '2345678901')
    );
    
insert into semestre(ano, metade)
    	values
     	(
    	'2016', '1'
    	),
        (
        '2016', '2'
);

insert into horario(disciplina, semeste)
    	values
    	(
    	(select id from disciplina where codigo = 'DES29001'),
    	(select id from semestre where ano = '2016' and metade = '2')    	    	 
    	#(select id from semestre where metade = '2'),
    	#'7:30',
    	#'9:20',
    	#'1'
);

