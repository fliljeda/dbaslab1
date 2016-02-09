WITH RECURSIVE traveler(country1, country2) AS(
	SELECT country1, country2
	FROM borders
	WHERE country1 = 'S' OR country2 = 'S'
	
	UNION

	SELECT b.country1, b.country2
	FROM traveler AS t, borders AS b
	WHERE b.country1 = t.country1 OR b.country2 = t.country2
	OR b.country1 = t.country2 OR b.country2 = t.country1
)
SELECT DISTINCT Country.name 
FROM traveler, Country
WHERE country1 = Country.code OR country2 = Country.code
ORDER BY name
;
