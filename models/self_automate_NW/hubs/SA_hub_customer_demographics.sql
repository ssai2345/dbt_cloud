{{ config(materialized='incremental') }}

{{ generate_hub(
    table_name='customer_demographics',
    business_key='customer_type_id',
    source_name='bigquery',
    source_table='customer_demographics',
    target_schema='SA_testload'
) }}