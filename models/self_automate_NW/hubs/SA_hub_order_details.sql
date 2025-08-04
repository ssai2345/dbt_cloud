{{ config(materialized='view') }}

{{ generate_hub(
    table_name='SA_order_details',
    business_key='order_id',
    source_name='bigquery',
    source_table='order_details',
    target_schema='SA_testload'
) }}