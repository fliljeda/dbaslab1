SELECT Continent.name, count(City.name)
FROM City, Country, encompasses, Continent
WHERE latitude < 35 AND latitude > -35
AND Continent.area > 9000000
AND Country.code = City.country
AND Country.code = encompasses.country
AND encompasses.continent = Continent.name
GROUP BY Continent.name
