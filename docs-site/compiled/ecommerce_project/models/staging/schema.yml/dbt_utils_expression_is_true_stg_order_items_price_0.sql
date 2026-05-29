



select
    1
from "ecommerce"."main"."stg_order_items"

where not(price >= 0)

