{{ config(materialized='incremental') }}

{{ generate_hub(
    table_name='SA_orders',
    business_key='order_id',
    source_name='bigquery',
    source_table='orders',
    target_schema='SA_testload'
) }}