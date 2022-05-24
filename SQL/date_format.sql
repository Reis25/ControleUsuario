-- =============
--  DateDiff 
-- =============

-- Diferente entre datas em: dias.
SELECT Datediff(day,'2003-05-29', '2005-02-28')

-- Diferente entre datas em: Meses.
SELECT Datediff(month,'2003-05-29', '2005-02-28')

-- Diferente entre datas em: anos.
SELECT Datediff(year,'2003-05-29', '2005-02-28')

-- Diferente entre datas em relação ao dia de hoje:
SELECT Datediff(year,'2003-05-29', getdate())

-- Criando um select com nossos dados em relação a data: 

DECLARE @aux date = '25-01-1992';

-- SET @aux  = '1992-01-25'

SELECT Datediff(day,@aux, getdate()) as Quant_de_dias_vividos

 Datediff(months, @aux, getdate()) as Quant_de_meses_vividos
 
  Datediff(year, @aux, getdate()) as Quant_de_anos_vividos

-- DateAdd: 

SELECT getdate() data_atual, Dateadd(day, 90, getdate()) as data_posterior


SELECT getdate() data_atual, Dateadd(month, 5, getdate()) as data_posterior

SELECT getdate() data_atual, Dateadd(year, 10, getdate()) as data_posterior
