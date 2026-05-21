SELECT
    customer_id,
    order_id,
    ordered_at,
    payment
FROM {{ ref('int_customers_orders') }}