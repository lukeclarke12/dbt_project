
    
    

select
    cul_daily_amount as unique_field,
    count(*) as n_records

from analytics.dbt.cul_order_price
where cul_daily_amount is not null
group by cul_daily_amount
having count(*) > 1


