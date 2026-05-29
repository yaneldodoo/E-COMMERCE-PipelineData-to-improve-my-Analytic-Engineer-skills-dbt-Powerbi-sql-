WITH source AS (
    SELECT * FROM "ecommerce"."main"."raw_order_items"
)

SELECT
    order_id::VARCHAR AS order_id,
    product_id::VARCHAR AS product_id,
    COALESCE(price, 0)::NUMERIC(10,2) AS price,
    COALESCE(shipping_charges, 0)::NUMERIC(10,2) AS shipping_charges,
    (COALESCE(price,0) + COALESCE(shipping_charges,0))::NUMERIC(10,2) AS total_item_amount
FROM source