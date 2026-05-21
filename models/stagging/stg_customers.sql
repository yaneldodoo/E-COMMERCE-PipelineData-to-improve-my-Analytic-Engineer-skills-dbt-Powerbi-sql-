WITH source AS (
    SELECT * FROM {{ source('raw', 'raw_customers') }}
)

SELECT
    customer_id::VARCHAR AS customer_id,
    customer_city::VARCHAR AS city,
    customer_state::VARCHAR AS etat,
    CONCAT(customer_city, ' - ', customer_state)::VARCHAR AS city_etat
FROM source