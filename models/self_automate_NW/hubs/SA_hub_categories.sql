{{ config(materialized='incremental') }}

{{ generate_hub(
    table_name='SA_categories',
    business_key='category_id',
    source_name='dbt_NorthWind_dvlt',
    source_table='dbt_NorthWind_dvlt.categories',
    target_schema='SA_target'
) }}
