{{ generate_satellite(
    table_name='SA_sat_products',
    business_key='product_id',
    descriptive_fields='product_name|supplier_id|category_id|quantity_per_unit|unit_price|units_in_stock|units_on_order|reorder_level|discontinued',
    source_name='products',
    source_table='dbt_NorthWind_dvlt.products',
    target_schema='SA_target'
) }}
