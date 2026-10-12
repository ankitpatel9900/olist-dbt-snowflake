with source as (

    select * from {{ source('olist', 'order_items') }}

),

renamed as (

    select
        -- Composite primary key
        order_id,
        order_item_id,

        -- Foreign keys
        product_id,
        seller_id,

        -- Timestamps
        shipping_limit_date                   as shipping_limit_at,

        -- Measures
        price,
        freight_value                         as freight_amount

    from source

)

select * from renamed
