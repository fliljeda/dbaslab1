 
SELECT CASE
	WHEN westernavg > easternavg 
	THEN 'Western hemisphere'
	ELSE 'Eastern hemisphere'
	END AS DesertHemisphere
FROM 	(SELECT  AVG(area) AS easternavg
	FROM Desert
	WHERE longitude(coordinates) > 0) eastern,
	(SELECT  AVG(area) AS westernavg
	FROM Desert
	WHERE longitude(coordinates) < 0) western

