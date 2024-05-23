SELECT * FROM Filmes


-- 1
SELECT
	Nome, Ano
FROM
	Filmes

-- 2
SELECT
	Nome, Ano, Duracao
FROM
	Filmes
ORDER BY
	Ano ASC

-- 3 
SELECT
	Nome, Ano, Duracao
FROM
	Filmes
WHERE Nome = 'De Volta para o Futuro'

SELECT * FROM Filmes


-- 1
SELECT
	Nome, Ano
FROM
	Filmes

-- 2
SELECT
	Nome, Ano, Duracao
FROM
	Filmes
ORDER BY
	Ano ASC

-- 3 
SELECT
	Nome, Ano, Duracao
FROM
	Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT
	Nome, Ano, Duracao
FROM
	Filmes
WHERE Ano = 1997;

-- 5
SELECT
	Nome, Ano, Duracao
FROM
	Filmes
WHERE Ano > 2000;

-- 6
SELECT
	Nome, Ano, Duracao
FROM
	Filmes
WHERE Duracao 
	BETWEEN 101 AND 150
ORDER BY
	Duracao ASC

-- 7 
SELECT 
	Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8 
SELECT 
	*
FROM Atores
WHERE Genero = 'M'

-- 9 
SELECT
	*
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

-- 10 
SELECT 
	F.Nome,
	G.Genero
FROM 
	Filmes F
INNER JOIN
	FilmesGenero FG ON FG.IdFilme = F.Id
INNER JOIN
	Generos G ON G.Id = FG.IdGenero

	
-- 11 
SELECT 
	F.Nome,
	G.Genero
FROM 
	Filmes F
INNER JOIN
	FilmesGenero FG ON FG.IdFilme = F.Id
INNER JOIN
	Generos G ON G.Id = FG.IdGenero
WHERE Genero = 'Mistério'

-- 12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel 
FROM Atores A
INNER JOIN ElencoFilme E ON(E.IdAtor = A.Id)
INNER JOIN Filmes F ON(F.Id = E.IdFilme)