{{ config(materialized='view') }}

{{ generate_hub(
    table_name='customers',
    business_key='customer_id',
    source_name='bigquery',
    source_table='customers',
    target_schema='SA_testload'
) }}