CREATE SCHEMA delivery;

CREATE TABLE delivery.telefone(
	codTelefone int PRIMARY KEY,
	telefone character varying(12) NOT NULL
);

CREATE TABLE delivery.email(
	codEmail int PRIMARY KEY,
	email character varying(100) NOT NULL
);

CREATE TABLE delivery.endereco(
	codEndereco int PRIMARY KEY,
	cidade character varying(100) NOT NULL,
	uf character varying(2) NOT NULL,
	complemento character,
	numero int NOT NULL,
	cep character varying(10) NOT NULL
);

CREATE TABLE delivery.dadosbanc(
	codDadosBanc int PRIMARY KEY,
	bandeiraCartao character varying(100) NOT NULL,
	numCartao character varying(20) NOT NULL,
	nomeCompleto character varying(100) NOT NULL,
	banco character varying(100) NOT NULL
);

CREATE TABLE delivery.cliente (
    codCliente int PRIMARY KEY,
    codTelefone int,
    nome character varying(100),
    codEmail int,
    codEndereco int,
    codDadosBanc int,
    FOREIGN KEY (codTelefone) REFERENCES delivery.telefone(codTelefone),
    FOREIGN KEY (codEmail) REFERENCES delivery.email(codEmail),
    FOREIGN KEY (codEndereco) REFERENCES delivery.endereco(codEndereco),
    FOREIGN KEY (codDadosBanc) REFERENCES delivery.dadosbanc(codDadosBanc)
);

CREATE TABLE delivery.produto(
	codProduto int PRIMARY KEY,
	preco float NOT NULL,
	avaliacao character varying(100),
	nome character varying(100) NOT NULL
);

CREATE TABLE delivery.pedido (
	codPedido int PRIMARY KEY,
    codCliente int NOT NULL,
    codProduto int NOT NULL,
    valorTotal float NOT NULL,
	quantProduto int NOT NULL,
	desconto float,
    FOREIGN KEY (codCliente) REFERENCES delivery.cliente(codCliente),
    FOREIGN KEY (codProduto) REFERENCES delivery.produto(codProduto)
);

CREATE TABLE delivery.empresa(
	codEmpresa int PRIMARY KEY,
	nome character varying(100) NOT NULL,
	codDadosBanc int NOT NULL,
	FOREIGN KEY (codDadosBanc) REFERENCES delivery.dadosbanc(codDadosBanc)
);

CREATE TABLE delivery.fornecimento(
	codProduto int NOT NULL,
	codEmpresa int NOT NULL,
	FOREIGN KEY (codProduto) REFERENCES delivery.produto(codProduto),
	FOREIGN KEY (codEmpresa) REFERENCES delivery.empresa(codEmpresa)
);

CREATE TABLE delivery.entregador(
	codEntregador int PRIMARY KEY,
	nome character varying(100) NOT NULL,
	codDadosBanc int NOT NULL,
	avaliacao character varying(100),
	codEmail int,
	codTelefone int,
	FOREIGN KEY (codEmail) REFERENCES delivery.email(codEmail),
	FOREIGN KEY (codTelefone) REFERENCES delivery.telefone(codTelefone)
);

CREATE TABLE delivery.entrega(
	codEntrega int PRIMARY KEY,
	codEntregador int,
	codPedido int,
	dataEntrega date,
	avaliacao character varying(100),
	FOREIGN KEY (codEntregador) REFERENCES delivery.entregador(codEntregador),
	FOREIGN KEY (codPedido) REFERENCES delivery.pedido(codPedido)
);