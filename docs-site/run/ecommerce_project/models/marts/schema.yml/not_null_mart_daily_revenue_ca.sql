
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select ca
from "ecommerce"."main"."mart_daily_revenue"
where ca is null



  
  
      
    ) dbt_internal_test