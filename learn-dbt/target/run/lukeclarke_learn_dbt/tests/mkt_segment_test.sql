select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT SUM(c_acctbal)
FROM analytics.dbt.playing_with_tests
HAVING SUM(c_acctbal) > 100000000
      
    ) dbt_internal_test