
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "ecommerce"."main"."stg_payments"

where not(payment >= 0)


  
  
      
    ) dbt_internal_test