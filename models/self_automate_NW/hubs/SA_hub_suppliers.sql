{{ config(materialized='incremental') }}

{{ generate_hub(
    table_name='SA_suppliers',
    business_key='supplier_id',
    source_name='bigquery',
    source_table='suppliers',
    target_schema='SA_testload'
) }}