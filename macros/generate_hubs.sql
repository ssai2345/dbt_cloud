

{% macro generate_hub(table_name, business_key, source_name, source_table, target_schema) %}
{{ log("Generating hub for " ~ table_name, info=True) }}

{{ config(
    materialized='table',
    schema=target_schema
) }}


with source_data as (
    select
        {{ business_key }} as bk,
        {{ dbt_utils.generate_surrogate_key([business_key]) }} as hub_key,
        current_timestamp as load_date,
        '{{ source_table }}' as record_source
from {{ source(source_name,source_table) }}

)

select
    hub_key,
    bk as {{ business_key }},
    load_date,
    record_source
from source_data

{% endmacro %}

