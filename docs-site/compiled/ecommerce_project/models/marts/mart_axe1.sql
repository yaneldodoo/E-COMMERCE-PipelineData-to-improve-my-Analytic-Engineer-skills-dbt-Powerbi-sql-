WITH base AS (

    SELECT
        o.order_id,
        o.ordered_at,
        DATE_TRUNC('month', o.ordered_at) AS mois_de_commande,
        DATE_TRUNC('year', o.ordered_at) AS annee_de_commande,
        oi.total_item_amount

    FROM "ecommerce"."main"."stg_orders" o
    JOIN "ecommerce"."main"."stg_order_items" oi
        ON o.order_id = oi.order_id

)

SELECT

    annee_de_commande,
    mois_de_commande,

    COUNT(DISTINCT order_id) AS nombre_de_commandes,
    SUM(total_item_amount) AS ca_total,
    AVG(total_item_amount) AS panier_moyen

FROM base

GROUP BY 1,2
ORDER BY 1,2