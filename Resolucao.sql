
-- 1
SELECT 
	Nome, Ano
FROM Filmes;

-- 2

SELECT
	Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

-- 3
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- 4
SELECT * FROM Filmes
WHERE Ano = 1997;

-- 5
SELECT * FROM Filmes
WHERE Ano > 2000;

-- 6
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- 7
SELECT ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- 8
SELECT 
	PrimeiroNome, UltimoNome
FROM Atores
WHERE genero = 'M';

-- 9
SELECT 
	PrimeiroNome, UltimoNome
FROM Atores
WHERE genero = 'F'
ORDER BY PrimeiroNome ASC;

-- 10
SELECT 
	f.nome AS Nome, g.genero AS Genero
FROM Filmes f
JOIN Generos g ON f.id = g.id;

-- 11
SELECT
	f.nome AS Nome, g.genero AS Genero
FROM Filmes f
JOIN Generos g ON f.id = g.id
WHERE g.genero = 'Mistério';

-- 12
SELECT 
	f.nome AS Nome, a.PrimeiroNome, a.UltimoNome, fa.Papel
FROM Filmes f
JOIN ElencoFilme fa ON f.id = fa.id
JOIN Atores a ON fa.id = a.id;
