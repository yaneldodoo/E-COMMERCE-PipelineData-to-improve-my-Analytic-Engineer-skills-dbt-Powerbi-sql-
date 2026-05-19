SELECT
    city,
    COUNT(order_id) AS nombre_commandes

FROM {{ ref('stg_customers') }} c
JOIN {{ ref('stg_orders') }} o
    ON c.customer_id = o.customer_id

GROUP BY city
ORDER BY nombre_commandes DESC
LIMIT 10