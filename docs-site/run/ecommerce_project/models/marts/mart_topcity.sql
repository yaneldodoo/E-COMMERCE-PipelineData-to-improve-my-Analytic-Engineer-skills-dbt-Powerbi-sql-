
  
    
    

    create  table
      "ecommerce"."main"."mart_topcity__dbt_tmp"
  
    as (
      --this model is to know the cities which make the biggest sales

SELECT
    order_id,
    city,
    etat,
    city_etat,
    payment
FROM "ecommerce"."main"."int_customers_orders"
    );
  
  