select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        id as value_field,
        count(*) as n_records

    from analytics.dbt.my_second_dbt_model
    group by 1

)

select *
from all_values
where value_field not in (
    1,2
)



      
    ) dbt_internal_test