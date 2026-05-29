
    
    

with all_values as (

    select
        segment as value_field,
        count(*) as n_records

    from "ecommerce"."main"."mart_customer_rfm"
    group by segment

)

select *
from all_values
where value_field not in (
    'Champion','Fidele','Perdu','A risque','En developpement'
)


