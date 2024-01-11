CREATE DATABASE IF NOT EXISTS Atividade5;
USE Atividade5;

CREATE TABLE IF NOT EXISTS Cliente (
    ClientesID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255),
    Idade INT,
    Email VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Carros (
    CarrosID INT PRIMARY KEY AUTO_INCREMENT,
    Ano INT,
    Marca VARCHAR(255),
    Modelo VARCHAR(255),
    PrecoDeAluguel DECIMAL(10, 2)
);

CREATE TABLE IF NOT EXISTS Locacoes (
    DataLocacao DATE,
    ClientesID INT,
    CarrosID INT,
    FOREIGN KEY (ClientesID) REFERENCES Cliente(ClientesID),
    FOREIGN KEY (CarrosID) REFERENCES Carros(CarrosID)
);

INSERT INTO Cliente (Nome, Idade, Email) VALUES
    ('Lucas', 28, 'lucas@email.com'),
    ('Beatriz', 23, 'beatriz@email.com'),
    ('Rodrigo', 33, 'rodrigo@email.com'),
    ('Isabel', 29, 'isabel@email.com'),
    ('Felipe', 35, 'felipe@email.com');

INSERT INTO Carros (Ano, Marca, Modelo, PrecoDeAluguel) VALUES
    (2020, 'Renault', 'Sandero', 120.00),
    (2019, 'Fiat', 'Palio', 110.00),
    (2021, 'Chevrolet', 'Onix', 130.00),
    (2018, 'Volkswagen', 'Polo', 125.00),
    (2022, 'Toyota', 'Yaris', 140.00);

INSERT INTO Locacoes (DataLocacao, ClientesID, CarrosID) VALUES
    ('2023-01-10', 1, 2),
    ('2023-02-15', 3, 4),
    ('2023-03-05', 2, 1),
    ('2023-04-01', 4, 3),
    ('2023-05-18', 1, 5);

SELECT Locacoes.DataLocacao, Carros.Marca, Carros.Modelo FROM Locacoes
JOIN Cliente ON Locacoes.ClientesID = Cliente.ClientesID
JOIN Carros ON Locacoes.CarrosID = Carros.CarrosID
WHERE Cliente.Nome = 'Lucas';
