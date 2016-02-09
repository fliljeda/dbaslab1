SELECT country, POWER(pgro, 10) * pop AS tenyears, POWER(pgro, 25) * pop AS twentyfiveyears, POWER(pgro, 50) * pop AS fiftyyears, POWER(pgro, 100) * pop AS hundredyears
FROM   (SELECT Country.name AS country, Country.population AS pop, (Population.population_growth+100)/100 AS pgro
	FROM Population, Country
	WHERE Country.code = Population.country) foo
ORDER BY country
