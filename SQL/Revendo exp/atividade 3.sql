CREATE DATABASE IF NOT EXISTS db_Atividade3;
USE db_Atividade3;

CREATE TABLE Curso (
    CursoID INT PRIMARY KEY AUTO_INCREMENT,
    NomeCurso VARCHAR(200),
    HorarioCurso VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS Alunos (
    AlunosID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(200),
    Idade INT,
    Email VARCHAR(200),
    CursoID INT,
    FOREIGN KEY (CursoID) REFERENCES Curso(CursoID)
);

INSERT INTO Curso (NomeCurso, HorarioCurso) VALUES
    ('Programação', '14:00'),
    ('Literatura', '10:00'),
    ('Espanhol', '17:30'),
    ('Química', '13:45'),
    ('Música', '09:15');

INSERT INTO Alunos (Nome, Idade, Email, CursoID) VALUES
    ('Ana Souza', 21, 'ana.souza@email.com', 1),
    ('Rafael Pereira', 23, 'rafael.p@email.com', 2),
    ('Carla Santos', 20, 'carla.s@email.com', 4),
    ('Daniel Lima', 22, 'daniel.l@email.com', 4),
    ('Isabel Oliveira', 19, 'isabel.o@email.com', 5);

SELECT Alunos.Nome, Curso.NomeCurso FROM Alunos
JOIN Curso ON Alunos.CursoID = Curso.CursoID;
