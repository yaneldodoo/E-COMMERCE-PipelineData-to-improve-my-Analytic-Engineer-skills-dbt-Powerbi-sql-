SELECT
    state,
    AVG(delivered_at - shipped_at) AS delai_livraison

FROM {{ ref('stg_orders') }} o
JOIN {{ ref('stg_customers') }} c
    ON c.customer_id = o.customer_id

GROUP BY state
ORDER BY delai_livraison DESC