WITH base AS (

    SELECT
        customer_id,
        ordered_at,
        payment
    FROM {{ ref('int_customers_orders') }}

),

customer_metrics AS (

    SELECT
        customer_id,

        COUNT(*) AS frequency,

        SUM(payment) AS monetary,

        MAX(ordered_at) AS last_order_date

    FROM base
    GROUP BY customer_id
),

rfm AS (

    SELECT
        customer_id,

        DATE_DIFF(
            'day',
            last_order_date,
            CURRENT_DATE
        ) AS recency,

        frequency,
        monetary

    FROM customer_metrics
),

scored AS (

    SELECT
        *,

        NTILE(5) OVER (ORDER BY recency ASC) AS r_score,
        NTILE(5) OVER (ORDER BY frequency DESC) AS f_score,
        NTILE(5) OVER (ORDER BY monetary DESC) AS m_score

    FROM rfm
)

SELECT
    *,

    CASE
        WHEN r_score >= 4
         AND f_score >= 4
         AND m_score >= 4
            THEN 'Champion'

        WHEN f_score >= 4
         AND m_score >= 3
            THEN 'Fidele'

        WHEN r_score <= 2
         AND f_score <= 2
            THEN 'Perdu'

        WHEN r_score <= 2
            THEN 'A risque'

        ELSE 'En developpement'
    END AS segment

FROM scored