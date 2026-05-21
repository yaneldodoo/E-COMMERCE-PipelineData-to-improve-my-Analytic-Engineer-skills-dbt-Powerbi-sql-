--this model is to know the winners category

SELECT
    order_id,
    product_id,
    category,
    total_item_amount
FROM {{ ref('int_sales') }}