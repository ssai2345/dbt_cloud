{{ generate_link(
    table_name='customer_customer_demo',
    business_keys='customer_id|customer_type_id',
    source_name='dbt_NorthWind_dvlt',
    source_table='dbt_NorthWind_dvlt.customer_customer_demo',
    target_schema='SA_target'
) }}
