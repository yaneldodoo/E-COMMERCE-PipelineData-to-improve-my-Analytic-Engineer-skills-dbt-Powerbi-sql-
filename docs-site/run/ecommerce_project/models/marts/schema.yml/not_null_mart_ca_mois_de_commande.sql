
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select mois_de_commande
from "ecommerce"."main"."mart_ca"
where mois_de_commande is null



  
  
      
    ) dbt_internal_test