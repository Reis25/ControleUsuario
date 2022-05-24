-- Trabalhando com a simulação de um supermercado


CREATE TABLE produtos(
cod_prod INT PRIMARY KEY,
descricao VARCHAR(100),
preco MONEY

);

CREATE TABLE produtos_atualizados(
cod_prod INT PRIMARY KEY,
descricao VARCHAR(100),
preco MONEY

);

INSERT INTO produtos VALUES 
(1, 'Chá', 10.00), 
(2, 'Café', 20.00), 
(3, 'Leite', 30.00), 
(4, 'Pão', 40.00), 
(6, 'Açucar', 15.00)



INSERT INTO produtos_atualizados VALUES 
(1, 'Chá', 10.00), 
(2, 'Café', 25.00), 
(3, 'Leite', 35.00), 
(5, 'Peixe', 35.00),
(6, 'sal', 10.00)

MERGE produtos as destino 
USING produto_atualizado as origem 
ON (destino.cod_prod =origem.cod_prod)

-- Há Registros no destino e na origem: 
WHEN MATCHED AND destino.descricao <> origem.descricao OR 
destino.preco <> origem.preco
THEN UPDATE SET destino.descricao = origem.descricao,
destino.preco = origem.preco 


-- Quando não há registros no destino e há na origem 
WHEN NOT MATCHED BY TARGET THEN
INSERT (cod_prod, descricao, preco) 
VALUES (origem.cod_prod, origem.descricao, origem.preco) 

-- Quando há registros no destino mas não há na origem 
WHEN NOT MATCHED BY SOURCE THEN
DELETE 
-- $action: especifica coluna nvarchar
-- OUTPUT  retorna informações ou expressões baseadas em cada linha afetada por uma instrução: INSERT, UPDATE, DELETE ou Merge.

OUTPUT $action, 
DELETED.cod_prod AS destino_cod_prod,
DELETED.descricao AS destino_descricao,
DELETED.preco AS destino_preco,

INSERTED.cod_prod AS origem_cod_prod,
INSERTED.descricao AS origem_descricao,
INSERTED.preco AS origem_preco;


SELECT @@ROWCOUNT; 

SELECT * FROM produtos
SELECT * FROM produtos_atualizados 

