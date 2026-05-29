
    
    

select
    idproduct as unique_field,
    count(*) as n_records

from "ecommerce"."main"."stg_products"
where idproduct is not null
group by idproduct
having count(*) > 1


