



select
    1
from "ecommerce"."main"."stg_payments"

where not(payment >= 0)

