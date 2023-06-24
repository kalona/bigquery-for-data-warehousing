
SELECT * FROM `bigquery-public-data.new_york.tree_census_2015` limit 10;

SELECT spc_common AS species,
health,
       COUNT(*) number_of_trees,
FROM `bigquery-public-data.new_york.tree_census_2015`
WHERE spc_common != '' AND health = 'Good'
GROUP BY spc_common, health
ORDER BY number_of_trees DESC
LIMIT 10;


-- Comparison is case-sensitive in BQ

SELECT spc_common AS species, 
       COUNT(*) number_of_trees,
FROM `bigquery-public-data.new_york.tree_census_2015`
WHERE UPPER(spc_common) = 'GINKGO'
GROUP BY spc_common, health
ORDER BY number_of_trees DESC
LIMIT 10;


-- Create schema

SELECT
  * EXCEPT(schema_owner, ddl)
FROM
  `region-us`.INFORMATION_SCHEMA.SCHEMATA;


CREATE schema if not exists bq_dwh_apress;


