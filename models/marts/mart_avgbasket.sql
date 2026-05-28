SELECT
    etat,
    city_etat,
    payment
FROM {{ ref('int_customers_orders') }}
GROUP BY 1,2,3