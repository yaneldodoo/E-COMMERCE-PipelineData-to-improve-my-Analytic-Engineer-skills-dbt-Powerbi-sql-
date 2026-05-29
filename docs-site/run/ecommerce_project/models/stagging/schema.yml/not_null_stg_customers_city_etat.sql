
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select city_etat
from "ecommerce"."main"."stg_customers"
where city_etat is null



  
  
      
    ) dbt_internal_test