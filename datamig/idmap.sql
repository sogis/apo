WITH
all_uuids AS (
	SELECT uuid FROM ada_adagis_d.poly_geometrie WHERE archive = 0
	UNION ALL 
	SELECT uuid FROM ada_adagis_d.point_geometrie WHERE archive = 0
	UNION ALL 
	SELECT uuid FROM ada_adagis_d."object" WHERE archive = 0
)

SELECT
	ROW_NUMBER() OVER() AS denkmal_id, --will get mapping file from zetcom
	uuid AS denkmal_uuid
FROM
	all_uuids
GROUP BY 
	uuid
