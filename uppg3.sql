SELECT mountainrange, count(country)
	FROM
		(SELECT DISTINCT mountainrange, country
		FROM
			(SELECT mountains AS mountainrange, count(Mountain) AS numberofmountains
			FROM Mountain
			WHERE mountains IS NOT NULL
			GROUP BY mountains) foo, (SELECT name AS Mountainname, mountains FROM mountain WHERE mountains IS NOT NULL) bar, geo_mountain
		WHERE mountains = mountainrange AND mountain = Mountainname AND numberofmountains > 2
		) blabla
	GROUP BY mountainrange