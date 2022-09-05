{% macro substring(expression, position, length) %}
  {{ return(adapter.dispatch('substring', 'utils') (expression, position, length)) }}
{% endmacro %}


{% macro default__substring(expression, position, length) -%}
    substring({{ expression }}, {{ position }}, {{ length }})
{% endmacro %}


{% macro spark__substring(expression, position, length) %}
    substring({{ expression }}, {{ position }}, {{ length }})
{% endmacro %}
