CREATE DATABASE vendas
GO

USE vendas
GO

CREATE TABLE cliente(
    id INT NOT NULL IDENTITY,
	nome TEXT NOT NULL,
	dataDeNasc DATE NOT NULL,
	cpf BIGINT NOT NULL,
	endereco TEXT NOT NULL,
	PRIMARY KEY(id)
)
GO



ALTER TABLE cliente
ADD salario SMALLMONEY NULL DEFAULT 1000

INSERT INTO
    cliente(nome, dataDeNasc, cpf, endereco)
	VALUES ('SARAH', '09-09-2004', 11122233344, 'Praça GV')
INSERT INTO cliente
VALUES ('Myllena', '11-09-2005', 33322211156, 'PraçaGV', 150019)

INSERT INTO cliente
VALUES ('Raquel', '03-04-1997', 44455533321, 'Sussuarana', 2000)

SELECT COUNT (cpf) AS 'Total de cpf'
FROM cliente

SELECT nome, cpf
FROM cliente
WHERE id = 1

SELECT cpf
FROM cliente
GROUP BY cpf
ORDER BY cpf DESC

SELECT cpf
FROM cliente
GROUP BY cpf
ORDER BY cpf ASC

UPDATE cliente
    SET cpf = 12022021
	WHERE id = 1

DELETE FROM cliente
WHERE id = 2

SELECT * FROM cliente

SELECT SUM(salario) AS 'Total' FROM cliente

SELECT MIN(salario) AS 'Total' FROM cliente

SELECT MAX(salario) AS 'Total' FROM cliente

SELECT AVG(salario) AS 'Total' FROM cliente


ALTER TABLE cliente
ADD CONSTRAINT valSalario CHECK (salario > 900)

CREATE TABLE endereco(
    id INT NOT NULL,
	id_cliente INT NOT NULL,
	rua VARCHAR(50) NOT NULL,
	bairro VARCHAR(50) NOT NULL,
	numero INT NOT NULL,
	cep BIGINT NOT NULL,
	siglaEstado CHAR(2) NOT NULL,
	CONSTRAINT FK_CLIENTE_ENDERECO FOREIGN KEY(id_cliente)
	REFERENCES cliente(id)
)
GO

ALTER TABLE endereco
ALTER COLUMN rua VARCHAR(100) NOT NULL

ALTER TABLE endereco
DROP COLUMN numero 

ALTER TABLE endereco
ADD numero INT NOT NULL


CREATE TABLE fornecedor(
    id INT NOT NULL IDENTITY,
	empresa TEXT NOT NULL,
	cnpjCpf BIGINT NOT NULL,
	telefone INT NOT NULL,
	email VARCHAR(255),
	PRIMARY KEY(id)
)
GO

ALTER TABLE fornecedor
ADD endereco TEXT NOT NULL

CREATE TABLE enderecoFonecedor(
    id INT NOT NULL,
	id_fornecedor INT NOT NULL,
	rua VARCHAR(50) NOT NULL,
	bairro VARCHAR(50) NOT NULL,
	numero INT NOT NULL,
	cep BIGINT NOT NULL,
	siglaEstado CHAR(2) NOT NULL,
	CONSTRAINT FK_FORNECEDOR_ENDERECO FOREIGN KEY(id_fornecedor)
	REFERENCES fornecedor(id)
)
GO

CREATE TABLE produtos(
    id INT NOT NULL,
	id_fornecedor INT NOT NULL,
	nome TEXT NOT NULL,
	quantidade INT NOT NULL,
	CONSTRAINT FK_FORNECEDOR_PRODUTOS FOREIGN KEY(id_fornecedor)
	REFERENCES fornecedor(id)
)
GO

CREATE TABLE vendas(
    id INT NOT NULL IDENTITY,
	id_cliente INT NOT NULL,
	id_produtos INT NOT NULL,
	quantidade BIGINT NOT NULL,
	CONSTRAINT FK_CLIENTE_VENDAS FOREIGN KEY (id_cliente) REFERENCES cliente(id),
	CONSTRAINT FK_PRODUTOS_VENDAS FOREIGN KEY (id_produtos) REFERENCES fornecedor(id)
)
GO