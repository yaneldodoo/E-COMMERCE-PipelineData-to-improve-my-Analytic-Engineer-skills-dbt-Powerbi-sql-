
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select idproduct
from "ecommerce"."main"."stg_products"
where idproduct is null



  
  
      
    ) dbt_internal_test