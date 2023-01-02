{% macro markup(sellingprice, costprice, test) %}
({{sellingprice}} - {{costprice}})/{{costprice}} + {{test}}
{% endmacro%}