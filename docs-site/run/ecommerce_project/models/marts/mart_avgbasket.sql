
  
    
    

    create  table
      "ecommerce"."main"."mart_avgbasket__dbt_tmp"
  
    as (
      SELECT
    etat,
    city_etat,
    payment
FROM "ecommerce"."main"."int_customers_orders"
GROUP BY 1,2,3
    );
  
  