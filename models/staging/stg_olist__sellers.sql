with source as (

    select * from {{ source('olist', 'sellers') }}

),

renamed as (

    select
        -- Primary key
        seller_id,

        -- Attributes
        seller_zip_code_prefix                as zip_code_prefix,
        seller_city                           as city,
        seller_state                          as state

    from source

)

select * from renamed