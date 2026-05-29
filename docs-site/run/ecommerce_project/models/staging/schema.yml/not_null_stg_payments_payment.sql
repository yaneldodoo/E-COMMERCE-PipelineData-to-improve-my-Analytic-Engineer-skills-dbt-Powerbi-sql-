
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select payment
from "ecommerce"."main"."stg_payments"
where payment is null



  
  
      
    ) dbt_internal_test