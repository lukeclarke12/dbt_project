{{ config(materialized='incremental') }}

SELECT D_DATE
FROM "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF10TCL"."DATE_DIM"
WHERE D_DATE <= current_date

{% if is_incremental() %}
  and d_date > (select max(d_date) from {{ this }})
{% endif %}
