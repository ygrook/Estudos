CREATE DATABASE GabrielJesusDosSantos
GO

USE GabrielJesusDosSantos
GO

CREATE TABLE cliente(
   idCliente INT NOT NULL IDENTITY,
   nome TEXT NOT NULL,
   dtNasc DATE NOT NULL,
   PRIMARY KEY(idCliente)
)
GO

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
   idVeiculo VARCHAR(8) NOT NULL,
   id_modelo INT NOT NULL,
   id_cliente INT NOT NULL,
   cor VARCHAR(20) NOT NULL,
   PRIMARY KEY(idVeiculo),
   CONSTRAINT FK_MODELO_VEICULO FOREIGN KEY(id_modelo) REFERENCES modelo(idModelo),
   CONSTRAINT FK_CLIENTE_VEICULO FOREIGN KEY(id_cliente) REFERENCES cliente(idCliente)
)
GO

CREATE TABLE Estaciona(
   idEstaciona INT NOT NULL,
   id_patio INT NOT NULL,
   id_veiculo VARCHAR(8) NOT NULL,
   dtEntrada VARCHAR(10) NOT NULL,
   dtSaida VARCHAR(10) NOT NULL,
   hsEntrada VARCHAR(10) NOT NULL,
   hsSaida VARCHAR(10) NOT NULL,
   PRIMARY KEY(idEstaciona),
   CONSTRAINT FK_PATIO_ESATCIONA FOREIGN KEY(id_patio) REFERENCES patio(idPatio),
   CONSTRAINT FK_VEICULO_ESTACIONA FOREIGN KEY(id_veiculo) REFERENCES veiculo(idVeiculo)
)
GO

-- Desenvolva uma consulta que retorne o nome do cliente, 
-- placa do veículo, modelo do veículo, data de entrada do 
-- veículo no estacionamento e 
-- o número do pátio, ordenado por nome do cliente.

SELECT cli.nome , idVeiculoa, desc_2, idModelo, dtEntrada, id_patio
FROM CLIENTE, VEICULO, MODELO, ESTACIONA
INNER JOIN CLIENTE cli on cli.idCliente = ve.idVeiculo


inner join CLIENTE cli on cli.idCliente = ve.idCliente
inner join produto pro on ve.idProduto = pro.idProduto
inner join fornecedor fo on fo.idFornecedor = pro.idFornecedor

-- Para consulta funcionar, inserir esses valores:
INSERT INTO cliente
VALUES ('Gabriel', '22-08-2002')

INSERT INTO modelo
VALUES (1, 'HB 20')

INSERT INTO patio
VALUES (1, 'Rua Pipoca', 10)

INSERT INTO veiculo
VALUES ('YGK-1992', 1, 1, 'Branco')

INSERT INTO estaciona
VALUES (1, 1, 'YGK-1992', '18-11-2021', '18-11-2021', '12:00', '15:00')

--Altere a tabela ESTACIONA e acrescente um atributo 
--total com valor padrão 10. (2,0)

ALTER TABLE estaciona
ADD valor SMALLMONEY DEFAULT 10

--Desenvolva uma consulta que retorne o nome do cliente e o valor total. 
--Sabendo que o calculo deve considerar o valor  de permanência 
--no estacionamento

