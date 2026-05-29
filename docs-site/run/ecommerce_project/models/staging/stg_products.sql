
  
  create view "ecommerce"."main"."stg_products__dbt_tmp" as (
    with source as (
    select * from "ecommerce"."main"."raw_products"
), 
renamed as (
    select product_id as product_id,
    cast(COALESCE(product_category_name, 'unknown') as varchar) as category,

    from source 
)
select * from renamed
  );
