{% macro binary_literal(expression) %}
  {{ return(adapter.dispatch('binary_literal', 'utils') (expression)) }}
{% endmacro %}


{% macro default__binary_literal(expression) -%}
  X'{{ expression }}'
{%- endmacro %}


{% macro spark__binary_literal(expression) -%}
  X'{{ expression }}'
{%- endmacro %}
