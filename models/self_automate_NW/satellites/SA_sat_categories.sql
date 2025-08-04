{{ generate_satellite(
    table_name='SA_sat_categories',
    business_key='category_id',
    descriptive_fields='category_name|description|picture',
    source_name='bigquery',
    source_table='categories',
    target_schema='SA_testload'
) }}
