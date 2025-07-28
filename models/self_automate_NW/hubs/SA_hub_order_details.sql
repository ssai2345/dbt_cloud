{{ config(materialized='incremental') }}

{{ generate_hub(
    table_name='SA_order_details',
    business_key='order_id',
    source_name='dbt_NorthWind_dvlt',
    source_table='dbt_NorthWind_dvlt.order_details',
    target_schema='SA_target'
) }}