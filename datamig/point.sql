SELECT
	uuid AS denkmal_id,
	st_union(st_multi(wkb_geometry)) AS mpunkt
FROM
	ada_adagis_d.point_geometrie
WHERE 
	archive = 0
GROUP BY 
	uuid