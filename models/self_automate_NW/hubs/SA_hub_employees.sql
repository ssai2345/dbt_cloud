{{ config(materialized='incremental') }}

{{ generate_hub(
    table_name='employees',
    business_key='employee_id',
    source_name='bigquery',
    source_table='employees',
    target_schema='SA_testload'
) }}