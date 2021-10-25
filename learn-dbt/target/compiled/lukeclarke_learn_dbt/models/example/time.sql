

SELECT to_time(concat(T_HOUR::varchar, ':', T_MINUTE, ':', T_SECOND)) AS TIME
FROM "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF10TCL"."TIME_DIM"
WHERE TIME <= current_time


  and TIME > (select max(TIME) from analytics.dbt_luke.time)
