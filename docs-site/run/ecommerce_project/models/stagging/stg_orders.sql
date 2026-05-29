
  
  create view "ecommerce"."main"."stg_orders__dbt_tmp" as (
    WITH source AS (
    SELECT * FROM "ecommerce"."main"."raw_orders"
)

SELECT
    order_id::VARCHAR AS order_id,
    customer_id::VARCHAR AS customer_id,
    COALESCE(order_status, 'unknown')::VARCHAR AS order_status,

    order_purchase_timestamp::TIMESTAMP AS ordered_at,
    order_approved_at::TIMESTAMP AS approved_at,
    order_delivered_timestamp::TIMESTAMP AS delivered_at,

    EXTRACT(YEAR FROM order_purchase_timestamp)::INT AS annee_de_commande,
    EXTRACT(MONTH FROM order_purchase_timestamp)::INT AS mois_de_commande
FROM source
  );
