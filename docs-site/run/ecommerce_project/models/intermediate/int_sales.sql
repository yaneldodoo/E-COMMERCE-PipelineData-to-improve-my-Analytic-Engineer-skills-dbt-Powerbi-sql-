
  
  create view "ecommerce"."main"."int_sales__dbt_tmp" as (
    --this model is an intermediate model that will be used to track sales, financial health of the business
WITH orders AS (
    SELECT * FROM "ecommerce"."main"."stg_orders"
),

items AS (
    SELECT * FROM "ecommerce"."main"."stg_order_items"
),

payments AS (
    SELECT * FROM "ecommerce"."main"."stg_payments"
),

customers AS (
    SELECT * FROM "ecommerce"."main"."stg_customers"
),

products AS (
    SELECT * FROM "ecommerce"."main"."stg_products"
)

SELECT
    o.order_id,
    o.customer_id,
    o.order_status,
    o.ordered_at,
    o.annee_de_commande,
    o.mois_de_commande,

    c.city,
    c.etat,
    c.city_etat,

    i.product_id,
    p.category,

    i.price,
    i.shipping_charges,
    i.total_item_amount,

    pay.payment,
    pay.typepaiement

FROM orders o

LEFT JOIN items i
    ON o.order_id = i.order_id

LEFT JOIN payments pay
    ON o.order_id = pay.order_id

LEFT JOIN customers c
    ON o.customer_id = c.customer_id

LEFT JOIN products p
    ON i.product_id = p.product_id
  );
