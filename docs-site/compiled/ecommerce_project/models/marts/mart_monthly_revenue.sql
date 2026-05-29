SELECT
    annee_de_commande AS annee,
    mois_de_commande AS mois,
    SUM(payment) AS ca
FROM "ecommerce"."main"."stg_orders" o
JOIN "ecommerce"."main"."stg_payments" p
    ON o.order_id = p.order_id
GROUP BY annee_de_commande, mois_de_commande