/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below

    post_hook="grant select on analytics.dbt_luke.first_model to role analyst" can put in config
*/




with source_data as (

    select 1 as id, 'NJ' as state, '2020-01-01 00:00:00.000'::timestamp as updated_at
    union all
    select null as id, 'TX' as state, '2020-01-01 00:00:00.000'::timestamp as updated_at
    union all
    select 3 as id, 'VT' as state, '2020-01-01 00:00:00.000'::timestamp as updated_at

)

select *
from source_data


/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null