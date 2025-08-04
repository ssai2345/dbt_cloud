
{% macro generate_satellite(table_name, business_key, descriptive_fields, source_name, source_table, target_schema) %}
{{ log("Generating satellite for " ~ table_name, info=True) }}

{{ config(
    materialized='table',
    schema=target_schema
) }}

{% set bk_list = business_key.split('|') %}
{% set df_list = descriptive_fields.split('|') %}

with source_data as (
    select
        {{ dbt_utils.generate_surrogate_key(bk_list) }} as satellite_key,
        {% for bk in bk_list %}
            {{ bk }} as {{ bk }},
        {% endfor %}
        {% for df in df_list %}
            {{ df }} as {{ df }},
        {% endfor %}
        current_timestamp as load_date,
        '{{ source_table }}' as record_source
    from {{ source(source_name,source_table) }}
)

select
    satellite_key,
    {% for bk in bk_list %}
        {{ bk }},
    {% endfor %}
    {% for df in df_list %}
        {{ df }},
    {% endfor %}
    load_date,
    record_source
from source_data

{% endmacro %}
