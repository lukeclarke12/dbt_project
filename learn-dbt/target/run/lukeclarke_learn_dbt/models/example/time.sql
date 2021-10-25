

        insert into analytics.dbt_luke.time ("TIME")
        (
            select "TIME"
            from analytics.dbt_luke.time__dbt_tmp
        );