{{ config(materialized='incremental') }}

{{ generate_hub(
    table_name='SA_employees',
    business_key='employee_id',
    source_name='dbt_NorthWind_dvlt',
    source_table='dbt_NorthWind_dvlt.employees',
    target_schema='SA_target'
) }}