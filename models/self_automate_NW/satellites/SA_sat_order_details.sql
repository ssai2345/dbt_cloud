{{ generate_satellite(
    table_name='SA_sat_order_details',
    business_key='order_id',
    descriptive_fields='product_id|unit_price|quantity|discount',
    source_name='bigquery',
    source_table='order_details',
    target_schema='SA_testload'
) }}
