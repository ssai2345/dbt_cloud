{{ config(materialized='incremental') }}

{{ generate_hub(
    table_name='bigquery',
    business_key='category_id',
    source_name='bigquery',
    source_table='categories',
    target_schema='SA_testload'
) }}
