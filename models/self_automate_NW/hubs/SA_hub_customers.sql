{{ config(materialized='incremental') }}

{{ generate_hub(
    table_name='SA_customers',
    business_key='customer_id',
    source_name='dbt_NorthWind_dvlt',
    source_table='dbt_NorthWind_dvlt.customers',
    target_schema='dbt_NorthWind_dvlt'
) }}