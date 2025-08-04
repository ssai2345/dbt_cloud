{{ generate_link(
    table_name='order_customer_employees',
    business_keys='order_id|customer_id|employee_id',
    source_name='bigquery',
    source_table='orders',
    target_schema='SA_testload'
) }}
