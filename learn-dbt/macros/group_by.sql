{% macro group_by(n) %}   -- starts macro namesmacro and parameter

  GROUP BY                -- SQL code to be inserted everytime macro called
    {% for i in range(1, n + 1) %}  -- If n = 1 group by columns 1 - 5, not inclusive at end, thus, n+1
      {{ i }}
      {% if not loop.last %} , {% endif %}  -- Inserts a comma after each loop except the last one, endif
    {% endfor %}                            -- end for loop
{% endmacro %}                              -- macro
