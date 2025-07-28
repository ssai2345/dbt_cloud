{{ config(materialized='incremental') }}

{{ generate_hub(
    table_name='SA_suppliers',
    business_key='supplier_id',
    source_name='dbt_NorthWind_dvlt',
    source_table='dbt_NorthWind_dvlt.suppliers',
    target_schema='SA_target'
) }}