SELECT
    city_etat,
    AVG(total_item_amount) AS panier_moyen

FROM {{ ref('stg_orders') }} o
JOIN {{ ref('stg_order_items') }} oi
    ON o.order_id = oi.order_id
JOIN {{ ref('stg_customers') }} c
    ON c.customer_id = o.customer_id

GROUP BY city_etat
ORDER BY panier_moyen DESC  