{{ generate_link(
    table_name='customer_customer_demo',
    business_keys='customer_id|customer_type_id',
    source_name='bigquery',
    source_table='customer_customer_demo',
    target_schema='SA_testload'
) }}
