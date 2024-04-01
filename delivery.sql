/* Populando o Banco de Dados */
/* Clientes */
INSERT INTO delivery.telefone(codTelefone, telefone)
VALUES (1, '6199457-6678');

INSERT INTO delivery.email(codEmail, email)
VALUES (1, 'jh@email.com');

INSERT INTO delivery.endereco(codEndereco, cidade, uf, numero, cep)
VALUES (1, 'Planaltina', 'GO', '8', '73753-018');

INSERT INTO delivery.dadosbanc(codDadosBanc, bandeiraCartao, numCartao, nomeCompleto, banco)
VALUES (1, 'Master Card', '1111 2222 3333 4444', 'Jose Henrique da S Mata', 'DadosBank');

INSERT INTO delivery.cliente(codCliente, codTelefone, nome, codEmail, codEndereco, codDadosBanc)
VALUES (1, 1, 'José Henrique', 1, 1, 1);


INSERT INTO delivery.telefone(codTelefone, telefone)
VALUES (2, '6198365-4480');

INSERT INTO delivery.email(codEmail, email)
VALUES (2, 'jp@email.com');

INSERT INTO delivery.endereco(codEndereco, cidade, uf, numero, cep)
VALUES (2, 'Brasília', 'DF', '102', '70713-000');

INSERT INTO delivery.dadosbanc(codDadosBanc, bandeiraCartao, numCartao, nomeCompleto, banco)
VALUES (2, 'Visa', '4444 5555 6666 7777', 'Joao Pedro Magalhães Coutinho', 'DataBank');

INSERT INTO delivery.cliente(codCliente, codTelefone, nome, codEmail, codEndereco, codDadosBanc)
VALUES (2, 2, 'João Pedro Coutinho', 2, 2, 2);


INSERT INTO delivery.telefone(codTelefone, telefone)
VALUES (3, '6198180-2025');

INSERT INTO delivery.email(codEmail, email)
VALUES (3, 'yago@email.com');

INSERT INTO delivery.endereco(codEndereco, cidade, uf, numero, cep)
VALUES (3, 'Brasília', 'DF', '404', '70238-180');

INSERT INTO delivery.dadosbanc(codDadosBanc, bandeiraCartao, numCartao, nomeCompleto, banco)
VALUES (3, 'Elo', '7777 8888 9999 0000', 'Yago Antonio Sanchez', 'DadosBank');

INSERT INTO delivery.cliente(codCliente, codTelefone, nome, codEmail, codEndereco, codDadosBanc)
VALUES (3, 3, 'Yago Antonio', 3, 3, 3);

/* Produtos */
INSERT INTO delivery.produto (codProduto, preco, avaliacao, nome)
VALUES (101, 15.55, 'Ótimo', 'McFlurry');

INSERT INTO delivery.produto (codProduto, preco, avaliacao, nome)
VALUES (102, 18.00, 'Bom', 'Milk Shake');

INSERT INTO delivery.produto (codProduto, preco, avaliacao, nome)
VALUES (103, 21.99, 'Excelente', 'Big Mac');


INSERT INTO delivery.produto (codProduto, preco, nome)
VALUES (201, 29.90, 'Torta de Morango');

INSERT INTO delivery.produto (codProduto, preco, avaliacao, nome)
VALUES (202, 7.00, 'Bom', 'Brownie');


INSERT INTO delivery.produto (codProduto, preco, avaliacao, nome)
VALUES (301, 15.99, 'Ruim', 'Salada de Beterraba');

INSERT INTO delivery.produto (codProduto, preco, nome)
VALUES (302, 45.80, 'Churrasco');

UPDATE delivery.produto SET nome = 'Churrasco Completo'
WHERE codProduto = 302;

/* Empresas */
INSERT INTO delivery.dadosbanc(codDadosBanc, bandeiraCartao, numCartao, nomeCompleto, banco)
VALUES (100, 'Master Card', '9999 8888 7777 6666', 'Jão', 'DataBank');

INSERT INTO delivery.dadosbanc(codDadosBanc, bandeiraCartao, numCartao, nomeCompleto, banco)
VALUES (200, 'Visa', '8888 6666 4444 2222', 'Yago', 'DadosBank');

INSERT INTO delivery.dadosbanc(codDadosBanc, bandeiraCartao, numCartao, nomeCompleto, banco)
VALUES (300, 'Master Card', '9999 7777 5555 3333', 'Zé', 'DadosBank');

INSERT INTO delivery.empresa (codEmpresa, nome, codDadosBanc)
VALUES (100, 'McJão', 100);

INSERT INTO delivery.empresa (codEmpresa, nome, codDadosBanc)
VALUES (200, 'Delicias do Yago', 200);

INSERT INTO delivery.empresa (codEmpresa, nome, codDadosBanc)
VALUES (300, 'Restaurante do Zé', 300);

/* Relacionando produtos com empresa */
INSERT INTO delivery.fornecimento (codProduto, codEmpresa)
VALUES (101, 100);

INSERT INTO delivery.fornecimento (codProduto, codEmpresa)
VALUES (102, 100);

INSERT INTO delivery.fornecimento (codProduto, codEmpresa)
VALUES (103, 100);

INSERT INTO delivery.fornecimento (codProduto, codEmpresa)
VALUES (201, 200);

INSERT INTO delivery.fornecimento (codProduto, codEmpresa)
VALUES (202, 200);

INSERT INTO delivery.fornecimento (codProduto, codEmpresa)
VALUES (301, 300);

INSERT INTO delivery.fornecimento (codProduto, codEmpresa)
VALUES (301, 300);

/* Entregador */
INSERT INTO delivery.dadosbanc(codDadosBanc, bandeiraCartao, numCartao, nomeCompleto, banco)
VALUES (501, 'Elo', '1234 9876 5678 6789', 'Felipe', 'DataBank');

INSERT INTO delivery.telefone(codTelefone, telefone)
VALUES (501, '6191234-5678');

INSERT INTO delivery.email(codEmail, email)
VALUES (501, 'felipe@email.com');

INSERT INTO delivery.entregador (codEntregador, nome, codDadosBanc, avaliacao, codEmail, codTelefone)
VALUES (501, 'Felipe', 501, 'Bom', 501, 501);

INSERT INTO delivery.dadosbanc(codDadosBanc, bandeiraCartao, numCartao, nomeCompleto, banco)
VALUES (502, 'Elo', '0000 9999 8888 7777', 'Wendely', 'DataBank');

INSERT INTO delivery.telefone(codTelefone, telefone)
VALUES (502, '619876-5432');

INSERT INTO delivery.email(codEmail, email)
VALUES (502, 'wendely@email.com');

INSERT INTO delivery.entregador (codEntregador, nome, codDadosBanc, avaliacao, codEmail, codTelefone)
VALUES (502, 'Wendely', 502, 'Ótimo', 502, 502);

/* Pedidos */
INSERT INTO delivery.pedido (codPedido, codCliente, codProduto, valorTotal, quantProduto, desconto)
VALUES (1, 1, 101, 13.00, 1, 2.55);

INSERT INTO delivery.pedido (codPedido, codCliente, codProduto, valorTotal, quantProduto, desconto)
VALUES (2, 1, 302, 40.80, 1, 5.00);

INSERT INTO delivery.pedido (codPedido, codCliente, codProduto, valorTotal, quantProduto)
VALUES (3, 2, 201, 29.90, 1);

INSERT INTO delivery.pedido (codPedido, codCliente, codProduto, valorTotal, quantProduto, desconto)
VALUES (4, 3, 202, 31.50, 5, 3.50);

INSERT INTO delivery.pedido (codPedido, codCliente, codProduto, valorTotal, quantProduto)
VALUES (5, 3, 103, 21.99, 1);

/* Entregas */
INSERT INTO delivery.entrega (codEntrega, codEntregador, codPedido, dataEntrega, avaliacao)
VALUES (10, 501, 1, '2023/06/21', 'Bom');

INSERT INTO delivery.entrega (codEntrega, codEntregador, codPedido, dataEntrega, avaliacao)
VALUES (11, 501, 2, '2023/06/22', 'Ótimo');

INSERT INTO delivery.entrega (codEntrega, codEntregador, codPedido, dataEntrega, avaliacao)
VALUES (12, 502, 3, '2023/08/03', 'Ruim');

INSERT INTO delivery.entrega (codEntrega, codEntregador, codPedido, dataEntrega)
VALUES (13, 502, 4, '2023/08/13');

INSERT INTO delivery.entrega (codEntrega, codEntregador, codPedido, dataEntrega, avaliacao)
VALUES (14, 501, 5, '2023/11/08', 'Bom');

/* CONSULTAS */
SELECT * FROM delivery.cliente;

UPDATE delivery.entrega SET dataEntrega = '2023/08/14'
WHERE codEntrega = 13;

INSERT INTO delivery.entrega (codEntrega, codEntregador, codPedido, dataEntrega)
VALUES (15, 502, 1, '2023/11/15');

DELETE FROM delivery.entrega 
WHERE dataEntrega = '2023/11/15';

SELECT * FROM delivery.entrega
ORDER BY codEntrega;

/* Selecionando o nome e os telefones do cliente 1 */
SELECT cliente.nome, telefone.telefone
FROM delivery.cliente
JOIN delivery.telefone ON cliente.codTelefone = telefone.codTelefone
WHERE cliente.codCliente = 1;

/* Selecionando pedidos feitos por um cliente */
SELECT cliente.nome AS nome_cliente, produto.nome AS nome_produto, entrega.dataEntrega
FROM delivery.pedido
JOIN delivery.cliente ON pedido.codCliente = cliente.codCliente
JOIN delivery.produto ON pedido.codProduto = produto.codProduto
JOIN delivery.entrega ON pedido.codPedido = entrega.codPedido
WHERE cliente.codCliente = 1;

SELECT cliente.nome AS nome_cliente, produto.nome AS nome_produto, entrega.dataEntrega
FROM delivery.pedido
JOIN delivery.cliente ON pedido.codCliente = cliente.codCliente
JOIN delivery.produto ON pedido.codProduto = produto.codProduto
JOIN delivery.entrega ON pedido.codPedido = entrega.codPedido
WHERE cliente.codCliente = 3;

/* Selecionando as entregas feitas de cada entregador */
SELECT entregador.nome AS nome_entregador, cliente.nome AS nome_cliente, produto.nome AS nome_produto
FROM delivery.entrega
JOIN delivery.entregador ON entrega.codEntregador = entregador.codEntregador
JOIN delivery.pedido ON entrega.codPedido = pedido.codPedido
JOIN delivery.cliente ON pedido.codCliente = cliente.codCliente
JOIN delivery.produto ON pedido.codProduto = produto.codProduto
WHERE entregador.codEntregador = 501;

SELECT entregador.nome AS nome_entregador, cliente.nome AS nome_cliente, produto.nome AS nome_produto
FROM delivery.entrega
JOIN delivery.entregador ON entrega.codEntregador = entregador.codEntregador
JOIN delivery.pedido ON entrega.codPedido = pedido.codPedido
JOIN delivery.cliente ON pedido.codCliente = cliente.codCliente
JOIN delivery.produto ON pedido.codProduto = produto.codProduto
WHERE entregador.codEntregador = 502;