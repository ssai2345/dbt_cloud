{% macro generate_link(table_name, business_keys, source_name, source_table, target_schema) %}
{{ log("Generating link for " ~ table_name, info=True) }}

{{ config(
    materialized='incremental',
    schema=target_schema
) }}

with source_data as (
    select
        {{ dbt_utils.generate_surrogate_key([business_keys | replace(" ", "") | replace("|", "', '")]) }} as link_key,
        {% for key in business_keys.split('|') %}
        {{ key }} as {{ key }},
        {% endfor %}
        current_timestamp as load_date,
        '{{ source_table }}' as record_source
    from {{ source_table }}
)

select
    link_key,
    {% for key in business_keys.split('|') %}
    {{ key }},
    {% endfor %}
    load_date,
    record_source
from source_data

{% endmacro %}
