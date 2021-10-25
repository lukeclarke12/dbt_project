select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from analytics.dbt.cul_order_price
where cul_daily_amount is null



      
    ) dbt_internal_test