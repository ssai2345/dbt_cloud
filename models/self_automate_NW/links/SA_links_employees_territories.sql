{{ generate_link(
    table_name='employees_territories',
    business_keys='employee_id|territory_id',
    source_name='bigquery',
    source_table='employees_territories',
    target_schema='SA_testload'
) }}
