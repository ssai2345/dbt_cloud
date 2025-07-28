{{ generate_satellite(
    table_name='SA_sat_regions',
    business_key='region_id',
    descriptive_fields='region_description',
    source_name='regions',
    source_table='dbt_NorthWind_dvlt.regions',
    target_schema='SA_target'
) }}
