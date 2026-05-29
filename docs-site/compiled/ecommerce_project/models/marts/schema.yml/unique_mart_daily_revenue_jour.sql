
    
    

select
    jour as unique_field,
    count(*) as n_records

from "ecommerce"."main"."mart_daily_revenue"
where jour is not null
group by jour
having count(*) > 1


