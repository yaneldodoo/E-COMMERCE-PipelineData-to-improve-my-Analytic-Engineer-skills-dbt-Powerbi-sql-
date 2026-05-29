
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select ca_total
from "ecommerce"."main"."mart_customer_metrics"
where ca_total is null



  
  
      
    ) dbt_internal_test