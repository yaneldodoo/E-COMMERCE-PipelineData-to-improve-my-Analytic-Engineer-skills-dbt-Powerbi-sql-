
  
    
    

    create  table
      "ecommerce"."main"."mart_daily_revenue__dbt_tmp"
  
    as (
      SELECT
    DATE(ordered_at) AS jour,
    SUM(payment) AS ca
FROM "ecommerce"."main"."stg_orders" o
JOIN "ecommerce"."main"."stg_payments" p
    ON o.order_id = p.order_id
GROUP BY DATE(ordered_at)
    );
  
  