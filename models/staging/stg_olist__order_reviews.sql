with source as (

    select * from {{ source('olist', 'order_reviews') }}

),

renamed as (

    select
        -- Primary key (note: ~800 duplicates exist; dedup lives in intermediate, not here)
        review_id,

        -- Foreign key
        order_id,

        -- Attributes
        review_score,
        review_comment_title,
        review_comment_message,

        -- Timestamps
        review_creation_date                  as created_at,
        review_answer_timestamp               as answered_at

    from source

)

select * from renamed