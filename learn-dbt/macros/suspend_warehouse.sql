{% macro suspend(warehouse_name) %}

  {% set sql %}
    ALTER WAREHOUSE {{warehouse_name}} resume  -- SQL statenebt to with code to start and end a query
  {% endset %}                                  -- warehouse needs to be running to suspend it, if not you can use the keyword resume to resume it

  {% set table = run_query(sql) %}  -- Need to use built in run_query command to actually execute the SQL statement
  {% do table.print_table() %}      -- Will print the results of the query to terminal

{% endmacro %}
