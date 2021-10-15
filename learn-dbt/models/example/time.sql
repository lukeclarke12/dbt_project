{{ config(materialized='incremental') }}

SELECT to_time(concat(T_HOUR::varchar, ':', T_MINUTE, ':', T_SECOND)) AS TIME
FROM "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF10TCL"."TIME_DIM"
WHERE TIME <= current_time

{% if is_incremental() %}
  and TIME > (select max(TIME) from {{ this }})
{% endif %}
