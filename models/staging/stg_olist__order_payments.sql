with source as (

    select * from {{ source('olist', 'order_payments') }}

),

renamed as (

    select
        -- Composite primary key
        order_id,
        payment_sequential,

        -- Attributes
        payment_type,
        payment_installments                  as installment_count,

        -- Measures
        payment_value                         as payment_amount

    from source

)

select * from renamed
