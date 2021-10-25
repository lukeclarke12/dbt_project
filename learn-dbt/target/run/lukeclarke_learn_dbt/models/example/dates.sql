

        insert into analytics.dbt.dates ("D_DATE")
        (
            select "D_DATE"
            from analytics.dbt.dates__dbt_tmp
        );