WITH source AS (
    SELECT * FROM "ecommerce"."main"."raw_payments"
)

SELECT
    order_id::VARCHAR AS order_id,
    payment_type::VARCHAR AS typepaiement,
    COALESCE(payment_value, 0)::NUMERIC(10,2) AS payment
FROM source