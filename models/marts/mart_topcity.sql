--this model is to know the cities which make the biggest sales

SELECT
    order_id,
    city,
    etat,
    city_etat,
    payment
FROM {{ ref('int_customers_orders') }}