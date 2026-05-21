--this model is to feed the customers orders dashboard

SELECT
    customer_id,
    order_id,
    ordered_at,
    city,
    etat,
    city_etat,
    payment,
    typepaiement
FROM {{ ref('int_sales') }}