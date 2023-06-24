-- Create schema

SELECT
  * EXCEPT(schema_owner, ddl)
FROM
  `region-us`.INFORMATION_SCHEMA.SCHEMATA;


CREATE schema if not exists bq_dwh_apress;

