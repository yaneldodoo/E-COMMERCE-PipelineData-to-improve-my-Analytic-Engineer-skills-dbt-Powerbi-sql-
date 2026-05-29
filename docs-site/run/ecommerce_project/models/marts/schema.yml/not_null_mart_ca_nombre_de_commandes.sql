
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select nombre_de_commandes
from "ecommerce"."main"."mart_ca"
where nombre_de_commandes is null



  
  
      
    ) dbt_internal_test