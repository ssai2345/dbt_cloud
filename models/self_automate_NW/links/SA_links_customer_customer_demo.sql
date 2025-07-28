{{ config(materialized='incremental') }}

{{ generate_link(
    table_name='SA_customer_customer_demo',
    business_keys='customer_id|customer_type_id',
    source_name='customer_customer_demo',
    source_table='dbt_NorthWind_dvlt.customer_customer_demo',
    target_schema='SA_target'
) }}

