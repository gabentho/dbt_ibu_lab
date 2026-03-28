{% macro clear_km_relays(column_name) %}
    RIGHT({{ column_name }}, LENGTH({{ column_name }}) - POSITION('x' IN {{ column_name }}))::FLOAT AS km
{% endmacro %}