
  
  create view "ecommerce"."main"."stg_order_items__dbt_tmp" as (
    -- models/staging/stg_order_items.sql
  
  WITH source AS (
      SELECT * FROM "ecommerce"."main"."raw_order_items"
  )
  
  SELECT
      order_id,
      product_id,
      CAST(price             AS DECIMAL(10,2)) AS price,
      CAST(shipping_charges  AS DECIMAL(10,2)) AS shipping_charges,
      price + shipping_charges                 AS total_item_amount
  FROM source
  );
