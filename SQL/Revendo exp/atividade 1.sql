CREATE DATABASE db_Atividade2;
USE db_Atividade2;

CREATE TABLE carros (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(100),
    ano INT,
    modelo VARCHAR(200),
    cor VARCHAR(100)
);

INSERT INTO carros (marca, ano, modelo, cor) VALUES ('Renault', 2015, 'Clio', 'Vermelho');
INSERT INTO carros (marca, ano, modelo, cor) VALUES ('Fiat', 2019, 'Uno', 'Branco');
INSERT INTO carros (marca, ano, modelo, cor) VALUES ('Hyundai', 2022, 'HB20', 'Prata');
INSERT INTO carros (marca, ano, modelo, cor) VALUES ('Peugeot', 2016, '208', 'Azul');
INSERT INTO carros (marca, ano, modelo, cor) VALUES ('Nissan', 2021, 'March', 'Verde');

SELECT * FROM carros
WHERE cor = 'Verde' AND ano > 2010;
