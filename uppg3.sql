SELECT DISTINCT Mountain.mountains, count(gm.country)
FROM Mountain, geo_mountain AS gm
WHERE Mountain.mountains IS NOT NULL 
    AND Mountain.name = gm.mountain
GROUP BY Mountain.mountains
