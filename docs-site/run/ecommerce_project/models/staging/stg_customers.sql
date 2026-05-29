
  
  create view "ecommerce"."main"."stg_customers__dbt_tmp" as (
    with source as (
    select * from "ecommerce"."main"."raw_customers"
), 
renamed as (
    select customer_id, 
    cast(customer_city as varchar) as  city,
    cast(customer_state as varchar) as etat,
    Concat(city, ' - ', etat) as city_etat
from source
)
select * from renamed
  );
