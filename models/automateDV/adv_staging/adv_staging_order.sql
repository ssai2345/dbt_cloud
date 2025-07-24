
{%- set yaml_metadata -%}
source_model: "staging_order"
derived_columns:
  RECORD_SOURCE: "!BQ_ORDER"
  LOAD_DATETIME: "created_at"
  EFFECTIVE_FROM: "updated_at"
hashed_columns:
  ORDER_PK: "ORDER_ID"
  CUSTOMER_PK: "CUSTOMER_ID"
  PRODUCT_PK: "PRODUCT_ID"
  CUSTOMER_ORDER_PK:
    - "CUSTOMER_ID"
    - "ORDER_ID"
  ORDER_HASHDIFF:
    is_hashdiff: true
    columns:
      - "order_amount"
      - "order_date"
      - "order_status"
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(include_source_columns=true,
                     source_model=metadata_dict['source_model'],
                     derived_columns=metadata_dict['derived_columns'],
                     null_columns=none,
                     hashed_columns=metadata_dict['hashed_columns'],
                     ranked_columns=none) }}