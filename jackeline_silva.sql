
-- Preparação de Base--

create database BD1_AT2;
use BD1_AT2;
drop table vendas;
create table vendas (
	id_vendas int NOT NULL,
    produto varchar(50) NOT NULL,
    categoria VARCHAR(50),
    quantidade int, 
    preco_unidade float,
    data_venda date,
    
    PRIMARY KEY(id_vendas)
);

insert into vendas values(1, 'Arroz', 'Alimentos', 5, 10.00, '2024-09-01');
insert into vendas values(2, 'Feijão', 'Alimentos', 3, 7.50, '2024-09-02');
insert into vendas values(3, 'Sabão', 'Limpeza', 2, 12.00, '2024-09-02');
insert into vendas values(4, 'Café', 'Alimentos', 6, 8.00, '2024-09-03');
insert into vendas values(5, 'Detergente', 'Limpeza', 4, 5.00, '2024-09-03');
insert into vendas values(6, 'Leite', 'Alimentos', 10, 4.50, '2024-09-04');
insert into vendas values(7, 'Sabonete', 'Higiene', 6, 3.00, '2024-09-04');
insert into vendas values(8, 'Pão', 'Alimentos', 15, 1.50, '2024-09-05');
insert into vendas values(9, 'Shampoo', 'Higiene', 1, 15.00, '2024-09-05');
insert into vendas values(10, 'Creme dental', 'Higiene', 3, 8.00, '2024-09-06');

select count(*) from vendas where categoria = 'Alimentos';
-- R. 1.a. 5

select count(*) from vendas;
-- R. 1.b. 10

select AVG(preco_unidade) from vendas;
-- R. 2.a. 7,45

select AVG(quantidade) from vendas;
-- R. 2.b. 5,5

select MIN(preco_unidade) from vendas;
-- R. 3.a. 1,5

select MAX(preco_unidade) from vendas;
-- R. 3.b. 15

select MAX(preco_unidade * quantidade) from vendas;
-- R. 4.a. 50

select AVG(preco_unidade * quantidade) from vendas where categoria = 'Higiene';
-- R. 4.a. 19


