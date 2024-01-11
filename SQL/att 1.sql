create database db_senac;
use db_senac;

create table alunos(
id_aluno int,
nome varchar(45),
endereco varchar(45),
cidade varchar(45)
);

create table professores(
id_professor int,
nome varchar(45),
endereco varchar(45),
cidade varchar(45)
);

create table turmas(
id_turma int,
fk_professores_id_professor int,
ano year(4),
turno varchar(20)
);

create table disciplinas(
id_disciplina int,
fk_professores_id_professor int,
nome varchar(100),
carga_horaria int
);

create table historicos(
id_historico int,
fk_alunos_id_aluno int,
fk_disciplinas_id_disciplina int,
fk_turmas_id_turma int,
ano varchar(45),
frequencia int,
nota double
);
