CREATE TABLE produtos(
	id_produto INT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT
);

CREATE TABLE clientes(
	id_cliente INT PRIMARY KEY,
	nome VARCHAR(100),
	email VARCHAR(100),
	telefone VARCHAR(11)
);

CREATE TABLE vendas(
	id_venda INT PRIMARY KEY,
    id_produto INT,
    id_cliente INT,
    quantidade INT,
    data_venda DATE,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

INSERT INTO produtos values(21,'Poco F2', 'Celular', 1000.00, 5);
INSERT INTO produtos values(11,'G733', 'Fone de Ouvido', 500.00, 9);
INSERT INTO produtos values(55,'Dell G15', 'Notebook Gamer', 4600.00, 1);
INSERT INTO produtos values(90,'Iphone 16', 'Celular', 16000.00, 22);
INSERT INTO produtos values(37,'LG Monitor 22pol.', 'Monitor', 700.00, 7);

INSERT INTO clientes values(567,'Martina', 'martina@gmail.com', '87999840088');
INSERT INTO clientes values(266,'Theodoro', 'theodoro12@gmail.com', '87996520088');
INSERT INTO clientes values(904,'Violetta', 's.violetta@gmail.com', '87996004008');
INSERT INTO clientes values(102,'Noah', 'noah_1@gmail.com', '87981845555');
INSERT INTO clientes values(599,'Enya', 'enya@gmail.com', '87981757896');

INSERT INTO vendas values(22222,55,904,1,'2024-05-11');
INSERT INTO vendas values(33333,11, 266, 2, '2024-04-01');
INSERT INTO vendas values(44444,37, 699, 2, '2024-03-21');
INSERT INTO vendas values(55555,90, 904, 11, '2024-05-30');
INSERT INTO vendas values(66666,21, 567, 2, '2024-08-2');
INSERT INTO vendas values(77777,90,266,1,'2024-07-25');
INSERT INTO vendas values(88888,11, 904, 2, '2024-09-13');
INSERT INTO vendas values(99999,37, 567, 5, '2024-01-12');
INSERT INTO vendas values(10101,55, 904, 2, '2024-05-30');
INSERT INTO vendas values(20202,21, 699, 5, '2024-10-2');

UPDATE produtos SET preco = 733.00 WHERE id_produto = 11;
UPDATE clientes SET telefone = '98911111111' WHERE id_cliente = 699;

DELETE FROM produtos WHERE id_produto = 21;
DELETE FROM clientes WHERE id_cliente = 102;

SELECT * FROM produtos WHERE categoria = 'Celular';
SELECT * FROM vendas WHERE data_venda = '2024-04-01';

SELECT id_produto,quantidade FROM vendas GROUP BY id_produto, quantidade;

SELECT id_cliente, vendas.quantidade * produtos.preco AS receita_total FROM vendas INNER JOIN produtos ON produtos.id_produto = vendas.id_produto GROUP BY id_cliente, receita_total;

SELECT * FROM produtos ORDER BY nome ASC;

SELECT * FROM clientes ORDER BY nome DESC;