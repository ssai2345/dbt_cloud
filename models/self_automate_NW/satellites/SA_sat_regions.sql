{{ generate_satellite(
    table_name='SA_sat_regions',
    business_key='region_id',
    descriptive_fields='region_description',
    source_name='bigquery',
    source_table='regions',
    target_schema='SA_testload'
) }}
