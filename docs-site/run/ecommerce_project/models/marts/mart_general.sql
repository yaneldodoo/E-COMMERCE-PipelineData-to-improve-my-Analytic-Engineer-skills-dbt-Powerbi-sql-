
  
    
    

    create  table
      "ecommerce"."main"."mart_general__dbt_tmp"
  
    as (
      --this mart was using to create the general design 
-- with some metrics which are forgetten in other marts but we can use it for future analysis

SELECT *
FROM "ecommerce"."main"."int_sales"
    );
  
  