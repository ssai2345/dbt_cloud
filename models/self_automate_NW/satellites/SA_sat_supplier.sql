{{ generate_satellite(
    table_name='SA_sat_suppliers',
    business_key='supplier_id',
    descriptive_fields='company_name|contact_name|contact_title|address|city|region|postal_code|country|phone|fax|home_page',
    source_name='bigquery',
    source_table='suppliers',
    target_schema='SA_testload'
) }}
