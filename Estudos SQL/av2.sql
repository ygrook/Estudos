CREATE DATABASE GabrielJesus
GO

USE GabrielJesus
GO

CREATE TABLE cliente(
   cpf INT NOT NULL IDENTITY,
   nome TEXT NOT NULL,
   dtNasc DATE NOT NULL,
   PRIMARY KEY(cpf)
)
GO

ALTER TABLE cliente
ALTER COLUMN nome VARCHAR(50) NOT NULL

CREATE TABLE modelo(
   idModelo INT NOT NULL,
   desc_2 VARCHAR(40) NOT NULL,
   PRIMARY KEY(idModelo)
)
GO

CREATE TABLE patio(
   idPatio INT NOT NULL,
   ender VARCHAR(40) NOT NULL,
   capacidade INT NOT NULL,
   PRIMARY KEY(idPatio)
)
GO

CREATE TABLE veiculo(
   placa VARCHAR(8) NOT NULL,
   id_modelo INT NOT NULL,
   id_cliente INT NOT NULL,
   cor VARCHAR(20) NOT NULL,
   PRIMARY KEY(placa),
   CONSTRAINT FK_MODELO_VEICULO FOREIGN KEY(id_modelo) REFERENCES modelo(idModelo),
   CONSTRAINT FK_CLIENTE_VEICULO FOREIGN KEY(id_cliente) REFERENCES cliente(cpf)
)
GO

CREATE TABLE Estaciona(
   idEstaciona INT NOT NULL,
   id_patio INT NOT NULL,
   id_veiculo VARCHAR(8) NOT NULL,
   dtEntrada DATETIME NOT NULL,
   dtSaida DATETIME NOT NULL,
   PRIMARY KEY(idEstaciona),
   CONSTRAINT FK_PATIO_ESATCIONA FOREIGN KEY(id_patio) REFERENCES patio(idPatio),
   CONSTRAINT FK_VEICULO_ESTACIONA FOREIGN KEY(id_veiculo) REFERENCES veiculo(placa)
)
GO
-- Desenvolva uma consulta que retorne o nome do cliente, 
-- placa do veículo, modelo do veículo, data de entrada do 
-- veículo no estacionamento e 
-- o número do pátio, ordenado por nome do cliente.

SELECT cli.nome, ve.placa, ve.id_modelo, est.dtEntrada, est.id_patio
FROM cliente cli
INNER JOIN veiculo ve on cli.cpf = ve.id_cliente
INNER JOIN estaciona est on ve.placa = est.id_veiculo
WHERE cli.cpf = ve.id_cliente
ORDER BY cli.nome


INSERT INTO cliente
VALUES ('Gabriel', '22-08-2002')

INSERT INTO modelo
VALUES (2, 'SW4')

INSERT INTO patio
VALUES (1, 'Rua Pipoca', 10)

INSERT INTO veiculo
VALUES ('YGK-1992', 1, 1, 'Branco')

INSERT INTO estaciona
VALUES (1, 1, 'YGK-1992', '18-11-2021 09:00:00', '18-11-2021 12:00:00')

--Altere a tabela ESTACIONA e acrescente um 
--atributo total com valor padrão 10.

ALTER TABLE estaciona
ADD total SMALLMONEY DEFAULT 10

--Desenvolva uma consulta que retorne o nome do cliente e o valor total. 
--Sabendo que o calculo deve considerar o valor  de permanência no estacionamento
--Valor mínimo 1h - 10 reais 
--Obs: o valor total é um calculo das horas de permanência no estacionamento.
--Ex: total de horas * 10

SELECT est.id_veiculo as 'Placa',DATEDIFF(HH, dtEntrada, dtSaida)*10 AS 'Total a pagar',  DATEDIFF(HH, dtEntrada, dtSaida) AS 'Total de horas'
FROM estaciona est, veiculo



--Desenvolva uma consulta que retorne a placa do veículo e o 
--total de horas que o veículo permaneceu no estacionamento.

SELECT est.id_veiculo as 'Placa', DATEDIFF(HH, dtEntrada, dtSaida) AS 'Total de horas'
FROM estaciona est, veiculo




	
	