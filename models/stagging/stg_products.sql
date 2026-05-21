WITH source AS (
    SELECT * FROM {{ source('raw', 'raw_products') }}
)

SELECT
    product_id::VARCHAR AS product_id,
    COALESCE(product_category_name, 'unknown')::VARCHAR AS category
FROM source