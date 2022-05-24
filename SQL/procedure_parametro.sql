-- Procedures com parametros: 

CREATE PROCEDURE PROC_saud_pers (@nome VARCHAR(30))

AS
BEGIN
	PRINT('e aí meu manX ' + @nome)
END

execute PROC_saud_pers 'Reisss' 
