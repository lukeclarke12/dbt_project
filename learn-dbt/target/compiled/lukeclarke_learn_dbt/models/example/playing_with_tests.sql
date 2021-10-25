SELECT
  c_custkey,
  c_mktsegment,
     -- starts macro namesmacro and parameter

  CASE                 -- SQL code to be inserted everytime macro called
    WHEN c_mktsegment IN ('BUILDING', 'HOUSEHOLD', 'FURNITURE')
      THEN 'segment_1'
    ELSE 'segment_2'
  END
 mkt_segment_adjusted
FROM snowflake_sample_data.tpch_sf1.customer