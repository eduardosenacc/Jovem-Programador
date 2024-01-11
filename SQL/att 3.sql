INSERT INTO notas(id_nota, nota) VALUES
(1, '1'),
(2,'2'),
(3,'3'),
(4,'4'),
(5,'5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9'),
(10, '10');

INSERT INTO cidades(id_cidade, nome, uf, ibge) VALUES
(1, 'Joaçaba', 'SC', '4209003'),
(2, 'Herval do Oeste', 'SC', '4206702'),
(3, 'Luzerna', 'SC', '4210035'),
(4, 'Erval Velho', 'SC', '4205209 '),
(5, 'Campos Novos', 'SC', '4203600');

INSERT INTO professores(id_professor,fk_cidades_id_cidade, nome, endereco) VALUES
(1, 1, 'Roger Alberto', 'R. XV de Novembro'),
(2, 1, 'Alvaro de Azevedo', 'R. Joao Leoncio de Freitas'),
(3, 3, 'Pedro Canvas', 'R. Otavio Bilibio'),
(4, 2, 'Lucas Alvarez', 'R. Joao Antunes'),
(5, 1, 'Thiago Motter', 'R. XV de Novembro');

INSERT INTO disciplinas(id_disciplina, fk_professores_id_professor, nome, carga_horaria) VALUES
(1,1, 'Matematica', '200'),
(2,2, 'Geografia', '200'),
(3,4, 'Historia', '200'),
(4,5, 'Portugues', '200'),
(5,3, 'Ingles', '200');

INSERT INTO alunos(id_aluno, fk_cidades_id_cidade, nome, endereco) VALUES
(1, 1, 'Thigo Vivian Motter', 'R. XV de Novembro'),
(2, 4, 'Pedro Santos', 'R. Joao Antunes'),
(3, 2, 'Jhulia Pereira', 'R. XV de Novembro'),
(4, 5, 'Lucas Zambiazzi', 'R. Otavio Bilibio'),
(5, 3, 'Mantovas', 'R. XX de Setembro');

INSERT INTO turmas(id_turma, fk_professores_id_professor, ano, turno) VALUES
(1, 1, 2023, 'matutino'),
(2, 3, 2023, 'matutino'),
(3, 5, 2023, 'vespertino'),
(4, 4, 2023, 'vespertino'),
(5, 2, 2023, 'noturno');

INSERT INTO historicos(id_historico, fk_alunos_id_aluno, fk_disciplinas_id_disciplina, fk_turmas_id_turma, fk_notas_id_nota, ano, frequencia) VALUES
(null, 1, 1, 1, 8, 2023, 80),
(null, 1, 1, 1, 9, 2023, 80),
(null, 1, 2, 1, 6, 2023, 90),
(null, 1, 2, 1, 8, 2023, 90),
(null, 1, 3, 1, 10, 2023, 100),
(null, 1, 3, 1, 8, 2023, 100),
(null, 1, 4, 1, 9, 2023, 100),
(null, 1, 4, 1, 5, 2023, 100),
(null, 1, 5, 1, 3, 2023, 94),
(null, 1, 5, 1, 7, 2023, 94),

(null, 2, 1, 3, 6, 2023, 60),
(null, 2, 1, 3, 5, 2023, 60),
(null, 2, 2, 3, 2, 2023, 70),
(null, 2, 2, 3, 9, 2023, 70),
(null, 2, 3, 3, 10, 2023, 90),
(null, 2, 3, 3, 8, 2023, 90),
(null, 2, 4, 3, 6, 2023, 80),
(null, 2, 4, 3, 8, 2023, 80),
(null, 2, 5, 3, 1, 2023, 64),
(null, 2, 5, 3, 9, 2023, 64),

(null, 3, 1, 4, 4, 2023, 87),
(null, 3, 1, 4, 8, 2023, 87),
(null, 3, 2, 4, 5, 2023, 94),
(null, 3, 2, 4, 7, 2023, 94),
(null, 3, 3, 4, 10, 2023, 100),
(null, 3, 3, 4, 10, 2023, 100),
(null, 3, 4, 4, 10, 2023, 82),
(null, 3, 4, 4, 10, 2023, 82),
(null, 3, 5, 4, 6, 2023, 94),
(null, 3, 5, 4, 8, 2023, 94),

(null, 4, 1, 5, 3, 2023, 80),
(null, 4, 1, 5, 8, 2023, 80),
(null, 4, 2, 5, 5, 2023, 90),
(null, 4, 2, 5, 8, 2023, 90),
(null, 4, 3, 5, 10, 2023, 100),
(null, 4, 3, 5, 7, 2023, 100),
(null, 4, 4, 5, 9, 2023, 100),
(null, 4, 4, 5, 7, 2023, 100),
(null, 4, 5, 5, 2, 2023, 94),
(null, 4, 5, 5, 9, 2023, 94),

(null, 5, 1, 2, 8, 2023, 80),
(null, 5, 1, 2, 9, 2023, 80),
(null, 5, 2, 2, 6, 2023, 90),
(null, 5, 2, 2, 8, 2023, 90),
(null, 5, 3, 2, 10, 2023, 100),
(null, 5, 3, 2, 8, 2023, 100),
(null, 5, 4, 2, 9, 2023, 100),
(null, 5, 4, 2, 5, 2023, 100),
(null, 5, 5, 2, 3, 2023, 94),
(null, 5, 5, 2, 7, 2023, 94);