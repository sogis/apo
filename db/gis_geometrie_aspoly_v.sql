CREATE OR REPLACE VIEW ada_denkmalschutz.gis_geometrie_aspoly_v AS
SELECT 
	t_id,
	denkmal_id,
	(punkt IS NOT NULL) AS orig_is_point,
	COALESCE(apolygon, st_buffer(punkt, 1, 1)) AS poly_repr
FROM 
	ada_denkmalschutz.gis_geometrie;
