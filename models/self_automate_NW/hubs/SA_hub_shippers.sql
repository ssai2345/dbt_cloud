{{ config(materialized='incremental') }}

{{ generate_hub(
    table_name='SA_shippers',
    business_key='shipper_id',
    source_name='dbt_NorthWind_dvlt',
    source_table='dbt_NorthWind_dvlt.shippers',
    target_schema='dbt_NorthWind_dvlt'
) }}