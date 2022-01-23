CREATE DATABASE GabrielJesusATVCOMP
GO

USE GabrielJesusATVCOMP
GO

CREATE TABLE TipoDeimovel(
	idTpimovel INT NOT NULL,
	tipoDeImovel VARCHAR(30) NOT NULL,
	PRIMARY KEY(idTpImovel)
)
GO

CREATE TABLE cidade(
	codCidade INT NOT NULL,
	cidade VARCHAR(80) NOT NULL,
	campo VARCHAR(40) NOT NULL,
	PRIMARY KEY(codCidade)
)
GO


CREATE TABLE Praia(
	idPraia INT NOT NULL,
	NmPraia VARCHAR(50) NOT NULL,
	PRIMARY KEY(idPraia)
)
GO

CREATE TABLE Proprietario(
	idProprietario INT NOT NULL,
	nome VARCHAR(50) NOT NULL,
	RG BIGINT NOT NULL,
	PRIMARY KEY(idProprietario)
)
GO

CREATE TABLE imovel(
	idImovel INT NOT NULL IDENTITY,
	id_TpImovel INT NOT NULL,
	id_CodCidade INT NOT NULL,
	id_Praia INT NOT NULL,
	id_Proprietario INT NOT NULL,
	qtdDeQuartos INT NOT NULL,
	qtdDeBanheiros INT NOT NULL,
	vistaPraMar VARCHAR(3) NOT NULL,
	endereco VARCHAR(30) NOT NULL,
	PRIMARY KEY(idImovel),
	CONSTRAINT FK_TIPOIMOVEL_IMOVEL FOREIGN KEY(id_TpImovel) 
	REFERENCES TipoDeImovel(idTpImovel),
	CONSTRAINT FK_CIDADE_IMOVEL FOREIGN KEY(id_CodCidade) 
	REFERENCES Cidade(CodCidade),
	CONSTRAINT FK_PRAIA_IMOVEL FOREIGN KEY (id_Praia) 
	REFERENCES Praia(idPraia),
	CONSTRAINT FK_PROPRIETARIO_IMOVEL FOREIGN KEY (id_Proprietario) 
	REFERENCES Proprietario(idProprietario)
)
GO


CREATE TABLE Inquilino(
	codInquilino INT NOT NULL,
	nome VARCHAR(50) NOT NULL,
	cpf BIGINT NOT NULL,
	PRIMARY KEY(codInquilino)
)
GO

CREATE TABLE Mobilia(
	codMobilia INT NOT NULL,
	descrição VARCHAR(100) NOT NULL,
	PRIMARY KEY(codMobilia)
)
GO

CREATE TABLE ContratoAluguel(
	idContrato BIGINT NOT NULL,
	id_Imovel INT NOT NULL,
	id_CodInquilino INT NOT NULL,
	dataContrato DATE NOT NULL,
	cpf BIGINT NOT NULL,
	dtIncio DATETIME DEFAULT GETDATE(),
	dtFim DATETIME NOT NULL,
	valorAluguel SMALLMONEY NOT NULL,
	PRIMARY KEY(idContrato),
	CONSTRAINT FK_IMOVEL_CONTRATO FOREIGN KEY (id_Imovel) REFERENCES imovel(idImovel),
	CONSTRAINT FK_INQUILINO_CONTRATO FOREIGN KEY (id_CodInquilino) REFERENCES Inquilino(CodInquilino)
)
GO

CREATE TABLE ItensMobilia(
	idItensMobilia INT NOT NULL,
	id_CodInquilino INT NOT NULL,
	id_idImovel INT NOT NULL,
	quantidade INT NOT NULL,
	PRIMARY KEY(idItensMobilia),
	CONSTRAINT FK_INQUILINO_ITENS FOREIGN KEY (id_CodInquilino) REFERENCES Inquilino(CodInquilino),
	CONSTRAINT FK_IMOVEL_ITENS FOREIGN KEY (id_idImovel) REFERENCES imovel(idImovel)
)
GO

INSERT INTO cidade
VALUES (1, 'Salvador', 'Metropele')

INSERT INTO TipoDeimovel
VALUES (1, 'Apartamento')

INSERT INTO Praia
VALUES (1, 'Barra')

INSERT INTO Proprietario
VALUES (1, 'Gabriel', 1111111)

INSERT INTO Mobilia
VALUES (1, 'Cama')

INSERT INTO mobilia
VALUES (2, 'TV')

INSERT INTO Inquilino
VALUES (1, 'Sarah', 2222222)

INSERT INTO ItensMobilia
VALUES (1, 1, 1, 70)

INSERT INTO imovel
VALUES (1, 1, 1, 1, 3, 2, 'SIM','Rua Pernambuco, BARRA')

INSERT INTO ContratoAluguel
VALUES (1, 1, 1, '10-11-2021', 22222222, '11-11-2021 09:00:00', '14-11-2021 12:00:00', 1500)


--Desenvolva uma consulta que retorne nome do inquilino, 
--cpf do inquilino, numero do contrato do aluguel, data do 
--contrato do aluguel, valor do aluguel, endereço do imóvel, 
--quantidades de quartos do imóvel, tipo do imóvel, cidade, 
--nome da praia, nome do proprietário e descrição da mobília.
