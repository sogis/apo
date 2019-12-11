SELECT 
	ROW_NUMBER() OVER() AS id,
	uuid AS denkmal_uuid,
	COALESCE(name, 'dummy_name') AS objektname,
	COALESCE(gemeinde, 'dummy_gemeinde') AS gemeindename,
	'dummy_stufe' AS schutzstufe_code,
	'dummy_stufe' AS schutzstufe_text,
	FALSE AS schutzdurchgemeinde,
	ST_GeomFromText('POINT(2600000 1200000)', 2056) AS geometrie
FROM 
	ada_adagis_d."object"
WHERE 
	archive = 0
