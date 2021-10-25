{% macro rename_segments(column_name) %}   -- starts macro namesmacro and parameter

  CASE                 -- SQL code to be inserted everytime macro called
    WHEN {{column_name}} IN ('BUILDING', 'HOUSEHOLD', 'FURNITURE')
      THEN 'segment_1'
    ELSE 'segment_2'
  END
{% endmacro %}
