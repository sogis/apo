CREATE OR REPLACE VIEW ada_denkmalschutz.gis_geometrie_orphan_v AS
SELECT 
	gis_geometrie.t_id,
	denkmal_id,
	COALESCE(apolygon, st_buffer(punkt, 1, 1)) AS poly_repr
FROM 
	ada_denkmalschutz.gis_geometrie
	LEFT JOIN ada_denkmalschutz.fachapplikation_denkmal ON 
		gis_geometrie.denkmal_id = fachapplikation_denkmal.id
WHERE
	fachapplikation_denkmal.id IS NULL
;
