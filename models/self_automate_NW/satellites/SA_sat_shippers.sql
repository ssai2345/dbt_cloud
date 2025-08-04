{{ generate_satellite(
    table_name='SA_sat_shippers',
    business_key='shipper_id',
    descriptive_fields='company_name|phone',
    source_name='bigquery',
    source_table='shippers',
    target_schema='SA_testload'
) }}
