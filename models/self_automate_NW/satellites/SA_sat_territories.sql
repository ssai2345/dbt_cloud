{{ generate_satellite(
    table_name='SA_sat_terriotries',
    business_key='territory_id',
    descriptive_fields='territory_description|region_id',
    source_name='bigquery',
    source_table='territories',
    target_schema='SA_testload'
) }}
