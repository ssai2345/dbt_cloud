{{ config(materialized='incremental') }}

{{ generate_hub(
    table_name='SA_territories',
    business_key='territory_id',
    source_name='bigquery',
    source_table='territories',
    target_schema='SA_testload'
) }}