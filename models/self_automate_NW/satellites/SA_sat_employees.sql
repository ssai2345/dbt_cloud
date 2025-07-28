{{ generate_satellite(
    table_name='SA_sat_employees',
    business_key='employee_id',
    descriptive_fields='last_name|first_name|title|title_of_courtesy|birth_date|hire_date|address|city|region|postal_code|country|home_phone|extension|photo|notes|reports_to|photo_path',
    source_name='employees',
    source_table='dbt_NorthWind_dvlt.employees',
    target_schema='SA_target'
) }}
