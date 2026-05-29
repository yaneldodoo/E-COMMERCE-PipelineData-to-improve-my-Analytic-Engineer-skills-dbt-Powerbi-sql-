
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select typepaiement
from "ecommerce"."main"."stg_payments"
where typepaiement is null



  
  
      
    ) dbt_internal_test