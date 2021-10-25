

SELECT D_DATE
FROM "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF10TCL"."DATE_DIM"
WHERE D_DATE <= current_date


  and d_date > (select max(d_date) from analytics.dbt.dates)
