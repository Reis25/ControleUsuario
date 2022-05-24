-- Merge! 
-- O merge nada mais é do que uma tratativa que o SQL possui para estabelecer regras claras para junção de tabelas.


CREATE TABLE #Tabela1(
nome varchar(100),
cadastro DATETIME,
alteracao DATETIME,
situacao CHAR

);

INSERT #Tabela1 VALUES
('Alexandre', getdate(), NULL, 1),
('Demetrios', getdate(), NULL, 1),
('Paulo', getdate(), NULL, 1),
('Mell', getdate(), NULL, 1),
('Fabio', getdate(), NULL, 1);

CREATE table #Tabela2(

nome VARCHAR(100),
email VARCHAR(100)

);


INSERT #Tabela2 VALUES
('PaulGray', 'PaulGray@gmail'),
('Jordson', 'Jordson@gmail'),
('Paulo', 'Paulo@gmail'),
('Mell', 'Mell@gmail' ),
('Fabio', 'Fabio@gmail');


-- Fazendo a verificação: 

SELECT * FROM #tabela1

SELECT * FROM #tabela2
 
 
 -- Seleciona tabela de destino 
 -- Seleciona a tabela de origem 
 -- Quando Há registros no destino e também na origem 
 -- Quando  há registro no destino mas não há na origem
 
 -- Checagem de resultados! 





-- Inicializando o Merge: 

-- Definindo tabela de destino: 
 MERGE #Tabela1 as Destino
 USING #tabela2 as Origem 
 
 ON Destino.nome = Origem.nome
 
 -- Há registros no destino e na origem! 

WHEN MATCHED

THEN UPDATE SET situacao = 0, alteracao = Getdate()

-- Quando Há registro no destino mas não há na origem

WHEN NOT MATCHED BY SOURCE

THEN UPDATE SET situacao = NULL, alteracao = getdate(); 
