with source as (

    select * from {{ source('olist', 'product_category_name_translation') }}

),

renamed as (

    select
        -- Primary key (join key to products.category_name_pt)
        product_category_name                 as category_name_pt,

        -- Attribute
        product_category_name_english         as category_name_en

    from source

)

select * from renamed