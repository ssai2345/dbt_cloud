{{ generate_satellite(
    table_name='SA_sat_customer_demographics',
    business_key='customer_type_id',
    descriptive_fields='customer_desc',
    source_name='bigquery',
    source_table='customer_demographics',
    target_schema='SA_testload'
) }}
