use curso
--drop function func_venda_prod 
--FUNÇÃO INLINE
--drop function FN_ESTADO_POP
--Criando Function  – Table Value
CREATE FUNCTION FN_ESTADO_POP (@regiao varchar(20)) 
returns TABLE 
AS     
RETURN       
(SELECT a.uf,b.estado,b.regiao, sum(a.populacao) as total
        FROM  senso a
		INNER JOIN REGIAO b
		ON a.cod_uf=b.cod_uf
		where b.regiao=@regiao
		group by a.uf,b.estado,b.regiao );


--Invocando funcao 

SELECT * FROM   dbo.FN_ESTADO_POP ('Norte');

