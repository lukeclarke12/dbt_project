
  create or replace  view analytics.dbt.playing_with_tests  as (
    SELECT *
FROM "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF001"."CUSTOMER"
  );
