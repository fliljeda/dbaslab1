SELECT name, count(river) 
FROM 
	(SELECT DISTINCT(name), river 
	FROM country, encompasses, geo_river 
	WHERE country.code = encompasses.country
	AND continent = 'Europe' 
	AND geo_river.country = country.code) foo 
GROUP BY name 
ORDER BY count DESC;
