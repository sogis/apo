SELECT
	ROW_NUMBER() OVER() AS denkmal_id, --dummy
	uuid AS denkmal_uuid,
	wkb_geometry AS punkt
FROM
	ada_adagis_d.point_geometrie
WHERE 
	archive = 0