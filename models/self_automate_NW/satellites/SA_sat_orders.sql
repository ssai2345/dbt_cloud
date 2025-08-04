{{ generate_satellite(
    table_name='SA_sat_orders',
    business_key='order_id',
    descriptive_fields='customer_id|employee_id|order_date|required_date|shipped_date|ship_via|freight|ship_name|ship_city|ship_region|ship_postal_code|ship_country',
    source_name='bigquery',
    source_table='orders',
    target_schema='SA_testload'
) }}
