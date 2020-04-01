SELECT Count(id) FROM versenyzo
WHERE pont >= 700;


SELECT DISTINCT orszagNev
FROM orszag INNER JOIN versenyzo
ON orszag.id = orszagId
ORDER BY orszagNev ASC


SELECT szakmaNev, Count(versenyzo.id) AS [versenyzok szama]
FROM szakma INNER JOIN versenyzo
ON szakmaId = szakma.id
GROUP BY szakmaNev
ORDER BY Count(versenyzo.id) DESC;


--T-SQL:
SELECT TOP 25 nev, orszagNev, szakmaNev, pont FROM szakma
INNER JOIN versenyzo ON szakmaId = szakma.id
INNER JOIN orszag ON orszagId = orszag.id
ORDER BY pont DESC, nev ASC;


--mySQL:
SELECT nev, orszagNev, szakmaNev, pont FROM szakma
INNER JOIN versenyzo ON szakmaId = szakma.id
INNER JOIN orszag ON orszagId = orszag.id
ORDER BY pont DESC, nev ASC
LIMIT 25;