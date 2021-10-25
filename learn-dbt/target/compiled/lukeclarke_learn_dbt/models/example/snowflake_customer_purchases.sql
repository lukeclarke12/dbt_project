

SELECT
    c.c_custkey,
    c.c_name,
    c.c_nationkey as nation,
    sum(o.o_totalprice) as total_order_price
FROM snowflake_sample_data.tpch_sf1.customer c
LEFT JOIN snowflake_sample_data.tpch_sf1.orders o
ON c.c_custkey = o.o_custkey

   -- starts macro namesmacro and parameter

  GROUP BY                -- SQL code to be inserted everytime macro called
      -- If n = 1 group by columns 1 - 5, not inclusive at end, thus, n+1
      1
       ,   -- Inserts a comma after each loop except the last one, endif
      -- If n = 1 group by columns 1 - 5, not inclusive at end, thus, n+1
      2
       ,   -- Inserts a comma after each loop except the last one, endif
      -- If n = 1 group by columns 1 - 5, not inclusive at end, thus, n+1
      3
        -- Inserts a comma after each loop except the last one, endif
                                -- end for loop
