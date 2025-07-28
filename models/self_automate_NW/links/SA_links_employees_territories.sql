{{ generate_link(
    table_name='employees_territories',
    business_keys='employee_id|territory_id',
    source_name='dbt_NorthWind_dvlt',
    source_table='dbt_NorthWind_dvlt.employees_territories',
    target_schema='SA_target'
) }}
