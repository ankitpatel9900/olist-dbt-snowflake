with source as (

    select * from {{ source('olist', 'geolocation') }}

),

renamed as (

    select
        -- Note: no true primary key — zip_code_prefix has duplicates by design.
        -- Dedup to a representative lat/lng per prefix happens in intermediate.
        geolocation_zip_code_prefix           as zip_code_prefix,
        geolocation_lat                       as latitude,
        geolocation_lng                       as longitude,
        geolocation_city                      as city,
        geolocation_state                     as state

    from source

)

select * from renamed
