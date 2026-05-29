
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    jour as unique_field,
    count(*) as n_records

from "ecommerce"."main"."mart_daily_revenue"
where jour is not null
group by jour
having count(*) > 1



  
  
      
    ) dbt_internal_test