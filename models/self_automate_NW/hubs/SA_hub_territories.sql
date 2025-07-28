{{ config(materialized='incremental') }}

{{ generate_hub(
    table_name='SA_territories',
    business_key='territory_id',
    source_name='dbt_NorthWind_dvlt',
    source_table='dbt_NorthWind_dvlt.territories',
    target_schema='SA_target'
) }}