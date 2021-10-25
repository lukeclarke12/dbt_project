

SELECT o.o_orderdate,
       sum(o.o_totalprice) OVER(partition by o.o_orderdate ORDER BY o.o_orderdate) AS "cul_daily_amount"
FROM "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS" AS o
