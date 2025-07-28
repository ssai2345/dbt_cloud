{{ config(materialized='incremental') }}

{{ generate_hub(
    table_name='SA_regions',
    business_key='region_id',
    source_name='dbt_NorthWind_dvlt',
    source_table='dbt_NorthWind_dvlt.regions',
    target_schema='SA_target'
) }}