
{%- set yaml_metadata -%}
source_model: "staging_customer"
derived_columns:
  RECORD_SOURCE: "!BQ_CUSTOMER"
  LOAD_DATETIME: "created_at"
  EFFECTIVE_FROM: "updated_at"
hashed_columns:
  CUSTOMER_PK: "CUSTOMER_ID"
  CUSTOMER_HASHDIFF:
    is_hashdiff: true
    columns:
      - "customer_name"
      - "customer_email"
      - "customer_address"
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}

{{ automate_dv.stage(include_source_columns=true,
                     source_model=metadata_dict['source_model'],
                     derived_columns=metadata_dict['derived_columns'],
                     null_columns=none,
                     hashed_columns=metadata_dict['hashed_columns'],
                     ranked_columns=none) }}