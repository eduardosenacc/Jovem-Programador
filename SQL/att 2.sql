CREATE DATABASE db_senac4;
USE db_senac4;

CREATE TABLE cidades(
id_cidade INT,
nome VARCHAR(50),
UF VARCHAR(2),
ibge INT,
PRIMARY KEY (id_cidade));

CREATE TABLE alunos(
id_aluno INT NOT NULL AUTO_INCREMENT,
fk_cidades_id_cidade INT,
nome VARCHAR(45),
endereco VARCHAR(45),
PRIMARY KEY (id_aluno),
FOREIGN KEY (fk_cidades_id_cidade) 
REFERENCES cidades (id_cidade));

CREATE TABLE professores(
id_professor INT NOT NULL AUTO_INCREMENT,
fk_cidades_id_cidade INT,
nome VARCHAR(45),
endereco VARCHAR(45),
PRIMARY KEY (id_professor),
FOREIGN KEY (fk_cidades_id_cidade) 
REFERENCES cidades (id_cidade));

CREATE TABLE turmas(
id_turma INT NOT NULL AUTO_INCREMENT,
fk_professores_id_professor INT,
ano YEAR,
turno VARCHAR(20),
PRIMARY KEY (id_turma),
FOREIGN KEY (fk_professores_id_professor) 
REFERENCES professores (id_professor));

CREATE TABLE disciplinas(
id_disciplina INT NOT NULL AUTO_INCREMENT,
fk_professores_id_professor INT, 
nome VARCHAR(100),
carga_horaria INT,
PRIMARY KEY (id_disciplina),
FOREIGN KEY (fk_professores_id_professor) 
REFERENCES professores (id_professor));

CREATE TABLE notas(
id_nota INT,
nota FLOAT,
PRIMARY KEY(id_nota));

CREATE TABLE historicos(
id_historico INT NOT NULL AUTO_INCREMENT,
fk_alunos_id_aluno INT,
fk_disciplinas_id_disciplina INT,
fk_turmas_id_turma INT,
fk_notas_id_nota INT,
ano YEAR,
frequencia INT,
PRIMARY KEY (id_historico), 
FOREIGN KEY (fk_alunos_id_aluno) REFERENCES alunos (id_aluno),
FOREIGN KEY (fk_disciplinas_id_disciplina) REFERENCES disciplinas (id_disciplina),
FOREIGN KEY (fk_turmas_id_turma) REFERENCES turmas (id_turma),
FOREIGN KEY (fk_notas_id_nota) REFERENCES notas (id_nota));
