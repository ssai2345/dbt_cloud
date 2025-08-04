{{ config(materialized='view') }}

{{ generate_hub(
    table_name='SA_regions',
    business_key='region_id',
    source_name='bigquery',
    source_table='regions',
    target_schema='SA_testload'
) }}