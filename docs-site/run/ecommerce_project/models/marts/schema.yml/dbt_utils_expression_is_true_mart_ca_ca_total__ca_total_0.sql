
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "ecommerce"."main"."mart_ca"

where not(ca_total ca_total >= 0)


  
  
      
    ) dbt_internal_test