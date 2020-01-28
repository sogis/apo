CREATE OR REPLACE VIEW ada_denkmalschutz.fachapplikation_denkmal_nogeom_v AS

WITH denkmal_geometries AS (
	SELECT
		denkmal_id
	FROM
		ada_denkmalschutz.gis_geometrie
	GROUP BY
		denkmal_id
)

SELECT
	t_id,
	id,
	objektname,
	gemeindename,
	geometrie
FROM 
	ada_denkmalschutz.fachapplikation_denkmal
	LEFT JOIN denkmal_geometries ON 
		denkmal_geometries.denkmal_id = fachapplikation_denkmal.id
WHERE
	denkmal_geometries.denkmal_id IS NULL
;
