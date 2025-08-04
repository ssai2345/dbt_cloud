{{ config(materialized='incremental') }}

{{ generate_hub(
    table_name='SA_products',
    business_key='product_id',
    source_name='bigquery',
    source_table='products',
    target_schema='SA_testload'
) }}