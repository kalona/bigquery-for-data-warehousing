SELECT spc_common AS species,
COUNT(*) number_of_trees,
FROM `bigquery-public-data.new_york.tree_census_2015`
WHERE spc_common != '' AND health = 'Good'
GROUP BY spc_common, health
ORDER BY number_of_trees DESC
LIMIT 10;


SELECT ARRAY(SELECT AS STRUCT 1 a, 2 b);

SELECT AS VALUE STRUCT(1 AS a, 2 AS b) xyz;


SELECT *
FROM t
  FOR SYSTEM_TIME AS OF TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 1 HOUR);

-- Set dataset and project_id
-- This ID is used when a dataset is not specified for a project in the query. 

SET @@dataset_id = 'bqdwh';
SET @@dataset_project_id = 'kalona';

declare mydataset default 'bqdwh';

SELECT
*
FROM
`region-us`.INFORMATION_SCHEMA.TABLES
WHERE table_schema = mydataset;

SELECT spc_common AS species,
       health,
       COUNT(*) number_of_trees,
FROM `bigquery-public-data.new_york.tree_census_2015`
WHERE spc_common != ''
    AND health = 'Good'
GROUP BY spc_common,
         health
ORDER BY number_of_trees DESC
LIMIT 10;


-- REPLACE

WITH orders AS
  (SELECT 5 as order_id,
  "sprocket" as item_name,
  200 as quantity)
SELECT * REPLACE (quantity/2 AS quantity)
FROM orders;


-- UNNEST




























