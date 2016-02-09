CREATE VIEW EightThousanders AS
SELECT name, mountains, height, coordinates
FROM Mountain
WHERE height >= 8000
;
EXPLAIN ANALYZE
SELECT DISTINCT Country.name
FROM EightThousanders AS et, Country, geo_mountain AS gm
WHERE et.name = gm.mountain AND Country.code = gm.country
;
DROP VIEW EightThousanders
;
