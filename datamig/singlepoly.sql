SELECT
    ROW_NUMBER() OVER() AS denkmal_id, --dummy
	uuid AS denkmal_uuid,
	wkb_geometry AS apolygon
FROM
	ada_adagis_d.poly_geometrie
WHERE 
	archive = 0
AND	
	ST_GeometryType(wkb_geometry) = 'ST_Polygon'