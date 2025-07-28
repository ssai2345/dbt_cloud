{% macro generate_link(table_name, business_keys, source_name, source_table, target_schema) %}
{{ log("Generating link for " ~ table_name, info=True) }}

{{ config(
    materialized='incremental',
    schema=target_schema
) }}

{% set keys_list = business_keys.split('|') %}

with source_data as (
    select
        {{ dbt_utils.generate_surrogate_key(keys_list) }} as link_key,
        {% for key in keys_list %}
            {{ key }} as {{ key }},
        {% endfor %}
        current_timestamp as load_date,
        '{{ source_table }}' as record_source
    from {{ source_table }}
)


select
    link_key,
    {% for key in keys_list %}
    {{ key }} as {{ key }},
    {% endfor %}
    load_date,
    record_source
from source_data

{% endmacro %}
