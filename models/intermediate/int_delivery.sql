--this model is to logistic's dashboard

SELECT
    o.order_id,
    c.customer_id,
    city,
    etat,
    ordered_at,
    delivered_at,

    DATE_DIFF(
        'day',
        ordered_at,
        delivered_at
    ) AS delai_livraison

FROM {{ ref('stg_orders') }} o

LEFT JOIN {{ ref('stg_customers') }} c
    ON o.customer_id = c.customer_id