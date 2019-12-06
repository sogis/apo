SELECT
	uuid AS denkmal_id,
	st_union(st_multi(wkb_geometry)) AS mpolygon
FROM
	ada_adagis_d.poly_geometrie
WHERE 
	archive = 0
GROUP BY 
	uuid