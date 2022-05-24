CREATE PROCEDURE exp (@base int)
AS
BEGIN
	SELECT power(@base, 2) as Num_quadrado, 
	              power(@base, 3) as Num_Cubo
END

EXECUTE exp 5
