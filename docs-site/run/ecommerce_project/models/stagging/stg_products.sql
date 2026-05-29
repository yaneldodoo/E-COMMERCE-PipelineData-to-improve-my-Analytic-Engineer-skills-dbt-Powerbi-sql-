
  
  create view "ecommerce"."main"."stg_products__dbt_tmp" as (
    WITH source AS (
    SELECT * FROM "ecommerce"."main"."raw_products"
)

SELECT
    product_id::VARCHAR AS product_id,
    COALESCE(product_category_name, 'unknown')::VARCHAR AS category
FROM source
  );
