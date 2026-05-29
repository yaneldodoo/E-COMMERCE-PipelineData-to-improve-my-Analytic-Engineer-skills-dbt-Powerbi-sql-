
  
    
    

    create  table
      "ecommerce"."main"."mart_delivery_delay__dbt_tmp"
  
    as (
      -- this model is to track the delivery delay of the orders

SELECT *
FROM "ecommerce"."main"."int_delivery"
    );
  
  