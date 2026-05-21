--this model is to track revenus per month/year

SELECT
    order_id,
    ordered_at,
    annee_de_commande,
    mois_de_commande,
    total_item_amount,
    payment
FROM {{ ref('int_sales') }}