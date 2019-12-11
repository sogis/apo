/* Homogenisiert die Punkt- und Polygongeometrien auf 
 * Singlepolygon-Ausgabe im Feld poly_repr.
 * Das boolean orig_is_point gibt Auskunft, ob 
 * die Originalgeometrie ein Punkt ist (true),
 * oder ein Polygon (false)
 * */
CREATE OR REPLACE VIEW ada_denkmalschutz.singlepoly_v AS
SELECT 
	t_id, 
	denkmal_id, 
	(punkt IS NOT NULL) AS orig_is_point,
	COALESCE(apolygon, ST_Buffer(punkt, 1, 1)) AS poly_repr
FROM 
	ada_denkmalschutz.so_d_dn0191128gis_single_geometrie;

	
		
