with source as (

    select * from {{ source('olist', 'customers') }}

),

renamed as (

    select
        -- Primary key
        customer_id,

        -- Person-level stable id (use for LTV, not customer_id)
        customer_unique_id,

        -- Attributes
        customer_zip_code_prefix              as zip_code_prefix,
        customer_city                         as city,
        customer_state                        as state

    from source

)

select * from renamed