
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select etat
from "ecommerce"."main"."stg_customers"
where etat is null



  
  
      
    ) dbt_internal_test