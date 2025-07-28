{{ generate_link(
    table_name='order_customer_employees',
    business_keys='order_id|customer_id|employee_id',
    source_name='dbt_NorthWind_dvlt',
    source_table='dbt_NorthWind_dvlt.orders',
    target_schema='SA_target'
) }}
