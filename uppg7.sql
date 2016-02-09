SELECT organization.name 
FROM organization, country, encompasses 
WHERE organization.name LIKE '%Nuclear%' 
AND established IS NULL 
AND continent = 'Europe'
AND organization.country = code 
AND organization.country = encompasses.country
