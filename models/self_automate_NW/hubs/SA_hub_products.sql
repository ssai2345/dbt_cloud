{{ config(materialized='incremental') }}

{{ generate_hub(
    table_name='SA_products',
    business_key='product_id',
    source_name='dbt_NorthWind_dvlt',
    source_table='dbt_NorthWind_dvlt.products',
    target_schema='dbt_NorthWind_dvlt'
) }}