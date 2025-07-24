{%- set source_model = "adv_staging_order"        -%}
{%- set src_pk = "CUSTOMER_ORDER_PK"         -%}
{%- set src_fk = ["CUSTOMER_PK", "ORDER_PK"] -%}
{%- set src_ldts = "LOAD_DATETIME"           -%}
{%- set src_source = "RECORD_SOURCE"         -%}

{{ automate_dv.link(src_pk=src_pk, src_fk=src_fk, src_ldts=src_ldts,
                    src_source=src_source, source_model=source_model) }}