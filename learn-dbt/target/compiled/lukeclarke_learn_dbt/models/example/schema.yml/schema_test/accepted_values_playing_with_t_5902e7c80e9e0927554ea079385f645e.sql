
    
    

with all_values as (

    select
        c_mktsegment as value_field,
        count(*) as n_records

    from analytics.dbt.playing_with_tests
    group by 1

)

select *
from all_values
where value_field not in (
    'AUTOMOBILE','MACHINERY','HOUSEHOLD','FURNITURE'
)


