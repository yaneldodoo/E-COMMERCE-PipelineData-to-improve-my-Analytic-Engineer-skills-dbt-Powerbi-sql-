
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select panier_moyen
from "ecommerce"."main"."mart_ca"
where panier_moyen is null



  
  
      
    ) dbt_internal_test