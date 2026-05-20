-- models/staging/stg_order_items.sql
  
  WITH source AS (
      SELECT * FROM {{ source('raw', 'raw_order_items') }}
  )
  
  SELECT
      order_id,
      product_id,
      CAST(COALESCE(price, 0) AS DECIMAL(10,2)) AS price,
      CAST(COALESCE(shipping_charges, 0) AS DECIMAL(10,2)) AS shipping_charges,
      price + shipping_charges                 AS total_item_amount
  FROM source
