-- this model is to track the delivery delay of the orders

SELECT *
FROM {{ ref('int_delivery') }}