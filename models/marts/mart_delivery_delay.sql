SELECT
city,
    AVG(date(delivered_at) - date(ordered_at)) AS delai_livraison

FROM {{ ref('stg_orders') }} o
JOIN {{ ref('stg_customers') }} c
    ON c.customer_id = o.customer_id

GROUP BY city
ORDER BY delai_livraison DESC