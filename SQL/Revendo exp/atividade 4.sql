CREATE DATABASE Atividade4;

USE Atividade4;

CREATE TABLE Autores (
    AutorID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255),
    Idade INT,
    Email VARCHAR(255)
);

INSERT INTO Autores (Nome, Idade, Email) VALUES
('João Silva', 30, 'joaosilva@email.com'),
('Maria Oliveira', 25, 'mariaoliveira@email.com'),
('André Santos', 35, 'andresantos@email.com'),
('Laura Costa', 28, 'lauracosta@email.com'),
('Pedro Almeida', 40, 'pedroalmeida@email.com');

CREATE TABLE Livros (
    LivroID INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(255),
    Descricao VARCHAR(255),
    AnoLancamento INT,
    AutoresID INT,
    FOREIGN KEY (AutoresID) REFERENCES Autores(AutorID)
);

INSERT INTO Livros (Titulo, Descricao, AnoLancamento, AutoresID) VALUES
('A Arte de Programar', 'Guia abrangente para programadores iniciantes e avançados', 2021, 1),
('Aventuras na Cidade Fantasma', 'Uma história emocionante de mistério e coragem', 2019, 2),
('Viagem pelo Tempo', 'Explorando os limites da viagem temporal', 2020, 3),
('A Revolução dos Dados', 'Transformando o mundo com a revolução dos dados', 2022, 4),
('Segredos do SQL', 'Desvendando os mistérios do MySQL', 2021, 5);

SELECT Autores.Nome
FROM Autores
JOIN Livros ON Autores.AutorID = Livros.AutoresID
WHERE Livros.Titulo = 'Segredos do SQL';
