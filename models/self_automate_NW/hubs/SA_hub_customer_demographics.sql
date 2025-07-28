{{ config(materialized='incremental') }}

{{ generate_hub(
    table_name='SA_customer_demographics',
    business_key='customer_type_id',
    source_name='dbt_NorthWind_dvlt',
    source_table='dbt_NorthWind_dvlt.customer_demographics',
    target_schema='dbt_NorthWind_dvlt'
) }}