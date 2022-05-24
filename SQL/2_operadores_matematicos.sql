--Operador
SELECT 1+3 as resultado;

--Operador
SELECT 3*2  as resultado;

--Operador
SELECT 5-2 as resultado;

--Operador
SELECT 15/3 as resultado

--Operador Mod
--mostra o restando da divisao
SELECT 12%5 as resultado;

--sobra zero
SELECT 12%4 as resultado

--
select ((1+4)*(3*3))/5 as resultado;

/*
Usando o operador de adi��o para calcular o n�mero total de 
horas de aus�ncia do trabalho para cada funcion�rio.
*/
use AdventureWorks2017;

SELECT p.firstname,��������     
		p.lastname,��������     
		e.vacationhours,��������     
		e.sickleavehours,��������     
		e.vacationhours�+�e.sickleavehours�AS�'Horas�Ausente'�
FROM humanresources.employee�AS�e��������
	JOIN person.person�AS�p����������
	ON e.businessentityid�=�p.businessentityid�
	ORDER BY 'Horas�Ausente' ASC;




--Usando subtra��o em uma instru��o SELECT
SELECT�Max(taxrate) maximo,
       Min(taxrate) minimo,
	   Max(taxrate)�-�Min(taxrate)�AS�'Diferen�a na Taxa'�
FROM���sales.salestaxrate�
WHERE��stateprovinceid�IS�NOT�NULL;�

/*
O exemplo a seguir recupera o n�mero de identifica��o do produto, 
o nome, o pre�o de tabela e o novo pre�o de tabela de 
todas as bicicletas mountain bike na tabela�Product.�
O novo pre�o de tabela � calculado usando o operador aritm�tico�*�
para multiplicar�ListPrice�por�1.15.
*/

	SELECT� productid,��������
			NAME,��������
			listprice,��������
			listprice�*�1.15�AS�Novo_preco�
			FROM���production.product�
				WHERE��NAME�LIKE�'Mountain-%'�
	ORDER��BY�productid�ASC;�


/*
O exemplo a seguir usa o operador aritm�tico de divis�o para 
calcular a meta de vendas mensal da equipe de vendas em Ciclos de 12 meses
*/

	SELECT� s.businessentityid�AS�SalesPersonID,��������
			p.firstname,��������
			p.lastname,��������
			s.salesquota,��������
			s.salesquota�/�12����AS�'Meta Mensal'�,
			e.JobTitle
			FROM���sales.salesperson�AS�s��������
				JOIN�humanresources.employee�AS�e����������
				ON�s.businessentityid�=�e.businessentityid��������
				JOIN�person.person�AS�p����������
				ON�s.businessentityid�=�p.businessentityid
			where s.salesquota is not null;


/*
O exemplo a seguir divide o n�mero 38 por 5. 
Isto resulta em 7 como a parte inteira do resultado = 7
e demonstra como o m�dulo retorna o resto de 3.
*/

	SELECT�38�/�5�AS�Inteiro,��������
	       38�%�5�AS�Restante


		   
