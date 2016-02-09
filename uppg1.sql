SELECT DISTINCT capital
FROM Country, geo_sea
WHERE Country.code = geo_sea.country 
	AND geo_sea.sea = 'Baltic Sea'
