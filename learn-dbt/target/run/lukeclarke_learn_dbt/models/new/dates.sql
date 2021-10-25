

        insert into analytics.dbt_luke.dates ("D_DATE")
        (
            select "D_DATE"
            from analytics.dbt_luke.dates__dbt_tmp
        );