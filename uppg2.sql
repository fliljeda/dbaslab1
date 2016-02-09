SELECT name, area
FROM Desert
WHERE coordinates IS NOT NULL
ORDER BY latitude(coordinates) DESC LIMIT 1;
