-- CONSULTA
SELECT * FROM LIVROS;

-- CONSULTA COM FILTRO
SELECT * FROM LIVROS
	WHERE CATEGORIA = "BIOGRAFIA";
	
SELECT * FROM LIVROS
    WHERE CATEGORIA = "ROMANCE" AND PRECO < 48;
    
SELECT * FROM LIVROS
    WHERE CATEGORIA = "POESIA"
    AND
    NOT (AUTORIA = "Luís Vaz de Camões" OR AUTORIA = "Gabriel Pedrosa");

/*
Imagine uma lista de cidades que terminam com “lândia”.
Para localizar essas cidades, podemos filtrar os nomes das que sabemos, 
como por exemplo Uberlândia em Minas Gerais e Analândia em São Paulo.
*/

SELECT CIDADE, ESTADO
FROM MAPA
WHERE CIDADE = "Uberlândia" OR CIDADE = "Analândia";

/*
Mas podemos otimizar nosso código para parecer todas as cidades com essa condição, 
utilizando o comando LIKE que irá extrair valores da tabela que possuem uma parte específica.
Para definir que a parte que queremos é o final das palavras usaremos a notação %lândia, como se fosse “alguma coisa” lândia. 
Veja a construção do comando e o resultado.
*/

SELECT CIDADE, ESTADO
FROM MAPA
WHERE CIDADE LIKE '%LÂNDIA';

-- SELEÇÃO DISTINTA
SELECT DISTINCT ID_LIVRO FROM VENDAS
	WHERE ID_VENDEDOR = 1
		ORDER BY ID_LIVRO;
		
/*
Para alterar e deletar você pode usar os comandos UPDATE e DELETE e combinar com WHERE para adicionar condições e filtros.
*/
		
-- Deletar registro
-- primeiro precisamos 'desligar' as chaves estrangeiras
SET FOREIGN_KEY_CHECKS = 0;

DELETE FROM LIVROS WHERE ID_LIVRO = 8;

-- Atualizar valores
UPDATE LIVROS SET PRECO = 0.9 * PRECO;

SELECT * FROM LIVROS;
