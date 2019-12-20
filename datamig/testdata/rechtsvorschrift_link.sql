SELECT
	ROW_NUMBER() OVER() AS denkmal_id,
	'titel' AS titel,
	current_date AS datum
FROM 
	ada_adagis_d."object"
WHERE 
	archive = 0
LIMIT 10

