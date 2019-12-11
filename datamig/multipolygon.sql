SELECT
	ROW_NUMBER() OVER() AS denkmal_id, --dummy
	uuid AS denkmal_uuid,
	st_multi(st_union(wkb_geometry)) AS mpolygon
FROM
	ada_adagis_d.poly_geometrie
WHERE 
	archive = 0
GROUP BY 
	uuid