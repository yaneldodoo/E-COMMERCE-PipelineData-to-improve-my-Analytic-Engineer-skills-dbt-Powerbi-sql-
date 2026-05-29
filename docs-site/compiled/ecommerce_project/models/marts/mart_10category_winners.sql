--this model is to know the winners category

SELECT
    order_id,
    product_id,
    category,
    total_item_amount
FROM "ecommerce"."main"."int_sales"