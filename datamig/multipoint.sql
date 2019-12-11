SELECT
	ROW_NUMBER() OVER() AS denkmal_id, --dummy
	uuid AS denkmal_uuid,
	st_multi(st_union(wkb_geometry)) AS mpunkt
FROM
	ada_adagis_d.point_geometrie
WHERE 
	archive = 0
GROUP BY 
	uuid