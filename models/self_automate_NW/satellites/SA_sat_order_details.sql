{{ generate_satellite(
    table_name='SA_sat_order_details',
    business_key='order_id',
    descriptive_fields='product_id|unit_price|quantity|discount',
    source_name='orders',
    source_table='dbt_NorthWind_dvlt.order_details',
    target_schema='SA_target'
) }}
