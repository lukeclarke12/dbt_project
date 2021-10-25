

      create or replace transient table analytics.dbt_luke.my_second_dbt_model  as
      (-- Use the `ref` function to select from other models


select *
from analytics.dbt_luke.first_model
      );
    