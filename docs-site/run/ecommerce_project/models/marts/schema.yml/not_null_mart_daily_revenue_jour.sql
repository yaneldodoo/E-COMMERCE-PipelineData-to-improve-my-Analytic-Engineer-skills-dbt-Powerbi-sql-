
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select jour
from "ecommerce"."main"."mart_daily_revenue"
where jour is null



  
  
      
    ) dbt_internal_test