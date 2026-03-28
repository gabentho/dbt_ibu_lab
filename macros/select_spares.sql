{% macro select_spares(column_name) %}
    LEFT({{ column_name }}, POSITION('+' IN {{ column_name }}) - 1)::INT AS shootings_prone,
    RIGHT({{ column_name }}, LENGTH({{ column_name }}) - POSITION('+' IN {{ column_name }}))::INT AS shootings_standing
{% endmacro %}