CREATE DATABASE revisao1
GO

use revisao1
go

CREATE TABLE cliente(
    idCliente INT NOT NULL IDENTITY,
	nome TEXT NOT NULL,
	dataDeNasc DATE NOT NULL,
	cpf BIGINT NOT NULL,
	endereco TEXT NOT NULL,
	PRIMARY KEY(idCliente)
)
GO

-- 4 - Criar uma tabela dependente relacionando com a entidade cliente. (id, nome, id_cliente, cpf)

CREATE TABLE dependente(
    idDependente INT NOT NULL IDENTITY,
	id_cliente INT NOT NULL,
	nome VARCHAR(50) NOT NULL,
	cpf BIGINT NOT NULL,
	CONSTRAINT FK_CLIENTE_DEPENDENTE FOREIGN KEY(id_cliente)
	REFERENCES cliente(idCliente)
)
GO

ALTER TABLE dependente
ALTER COLUMN nome text NOT NULL

ALTER TABLE dependente
ADD PRIMARY KEY(idDependente)

CREATE TABLE fornecedor(
    idFornecedor INT NOT NULL IDENTITY,
	empresa TEXT NOT NULL,
	cnpjCpf BIGINT NOT NULL,
	endereco VARCHAR(100) NOT NULL,
	telefone INT NOT NULL,
	email VARCHAR(255),
	PRIMARY KEY(idFornecedor)
)
GO

CREATE TABLE endereco(
    idEnderecoCli INT NOT NULL,
	id_cliente INT NOT NULL,
	rua VARCHAR(50) NOT NULL,
	bairro VARCHAR(50) NOT NULL,
	numero INT NOT NULL,
	cep BIGINT NOT NULL,
	siglaEstado CHAR(2) NOT NULL,
	PRIMARY KEY(idEnderecoCli),
	CONSTRAINT FK_CLIENTE_ENDERECO FOREIGN KEY(id_cliente)
	REFERENCES cliente(idCliente)
)
GO

CREATE TABLE enderecoFor(
    idEnderecoFor INT NOT NULL,
	id_fornecedor INT NOT NULL,
	rua VARCHAR(50) NOT NULL,
	bairro VARCHAR(50) NOT NULL,
	numero INT NOT NULL,
	cep BIGINT NOT NULL,
	siglaEstado CHAR(2) NOT NULL,
	PRIMARY KEY(idEnderecoFor),
	CONSTRAINT FK_FORNECEDOR_ENDERECO FOREIGN KEY(id_fornecedor)
	REFERENCES fornecedor(idFornecedor)
)
GO

CREATE TABLE produto(
    idProduto INT NOT NULL,
	id_fornecedor INT NOT NULL,
	nome TEXT NOT NULL,
	quantidade INT NOT NULL,
	PRIMARY KEY(idProduto),
	CONSTRAINT FK_FORNECEDOR_PRODUTO FOREIGN KEY(id_fornecedor)
	REFERENCES fornecedor(idFornecedor)
)
GO

CREATE TABLE vendas(
    idVendas INT NOT NULL IDENTITY,
	id_cliente INT NOT NULL,
	id_produtos INT NOT NULL,
	quantidade BIGINT NOT NULL,
	CONSTRAINT FK_CLIENTE_VENDAS FOREIGN KEY (id_cliente) REFERENCES cliente(idCliente),
	CONSTRAINT FK_PRODUTOS_VENDAS FOREIGN KEY (id_produtos) REFERENCES fornecedor(idFornecedor)
)
GO

-- 2 - Adicionar na tabela produto, um atributo valor_unitario.

ALTER TABLE produto
ADD valor SMALLMONEY DEFAULT 50

-- 3 - Adicionar na tabela Vendas, um atributo data.

ALTER TABLE vendas
ADD DATA DATE NULL DEFAULT GETDATE()

UPDATE vendas
     SET DATA = GETDATE()

-- 6 - Inserir registros em todas as entidades.

INSERT INTO cliente
VALUES ('Gabriel', '22-08-2002', 111111111, 'Rua ACM')

INSERT INTO dependente
VALUES (1, 'Sarah', 1111112222)

INSERT INTO fornecedor
VALUES ('DLH', 111111111, 'Rua Pipoca', 7199, 'dlh@gmail')

INSERT INTO produto
VALUES (2, 1, 'camisa', 5, 50)

INSERT INTO vendas
VALUES (1, 1, 1, '17-11-2021')

-- 8 - Adicionar na tabela cliente um atributo idade com a regra que impossibilite adicionar um cliente menor que 18 anos.

ALTER TABLE cliente
ADD CONSTRAINT ValidaIdade CHECK(dataDeNasc > 18 )

-- 9 - Atualizar as informações de um cliente.

UPDATE cliente
   SET cpf = 073444444
   WHERE idCliente = 1

-- 10 - Desenvolva uma consulta que retorne o total de vendas 
-- realizadas no mês de novembro.




