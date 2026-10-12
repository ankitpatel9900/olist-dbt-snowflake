with source as (

    SELECT * FROM {{source ('olist','orders')}}
), 

renamed as (

    SELECT 
    order_id,

        -- Foreign keys
        customer_id,

        -- Attributes
        order_status,

        -- Timestamps
        order_purchase_timestamp              as purchased_at,
        order_approved_at                     as approved_at,
        order_delivered_carrier_date          as shipped_at,
        order_delivered_customer_date         as delivered_at,
        order_estimated_delivery_date         as estimated_delivery_at

    from source
)

SELECT * FROM renamed
