CREATE OR REPLACE VIEW ada_denkmalschutz_mig.gis_geometrie_aspoly_v AS
SELECT 
	t_id,
    denkmal_id,
    (punkt IS NOT NULL) AS orig_is_point,
    COALESCE(apolygon, st_buffer(punkt, 1, 1)) AS poly_repr
FROM 
	ada_denkmalschutz_mig.so_d_dn0191128gis_single_geometrie;
