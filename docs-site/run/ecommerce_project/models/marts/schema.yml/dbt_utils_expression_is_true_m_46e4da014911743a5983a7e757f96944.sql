
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "ecommerce"."main"."mart_ca"

where not(panier_moyen panier_moyen >= 0)


  
  
      
    ) dbt_internal_test