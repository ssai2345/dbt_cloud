{{ config(materialized='view') }}

{{ generate_hub(
    table_name='SA_shippers',
    business_key='shipper_id',
    source_name='bigquery',
    source_table='shippers',
    target_schema='SA_testload'
) }}