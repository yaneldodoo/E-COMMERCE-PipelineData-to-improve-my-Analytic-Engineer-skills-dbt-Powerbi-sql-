
  
    
    

    create  table
      "ecommerce"."main"."mart_customer_metrics__dbt_tmp"
  
    as (
      SELECT
    customer_id,
    order_id,
    ordered_at,
    payment
FROM "ecommerce"."main"."int_customers_orders"
    );
  
  