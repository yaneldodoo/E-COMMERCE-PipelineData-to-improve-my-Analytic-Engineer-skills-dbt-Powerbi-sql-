--this model is to feed the customers orders dashboard

SELECT
    customer_id,
    order_id,
    ordered_at,
    etat,

    case
        when etat = 'PR' then 'Paraná'
        when etat = 'SP' then 'São Paulo'
        when etat = 'MG' then 'Minas Gerais'
        when etat = 'DF' then 'Distrito Federal'
        when etat = 'MA' then 'Maranhão'
        when etat = 'RS' then 'Rio Grande do Sul'
        when etat = 'CE' then 'Ceará'
        when etat = 'RN' then 'Rio Grande do Norte'
        when etat = 'AC' then 'Acre'
        when etat = 'RJ' then 'Rio de Janeiro'
        when etat = 'BA' then 'Bahia'
        when etat = 'SE' then 'Sergipe'
        when etat = 'ES' then 'Espírito Santo'
        when etat = 'GO' then 'Goiás'
        when etat = 'AM' then 'Amazonas'
        when etat = 'SC' then 'Santa Catarina'
        when etat = 'TO' then 'Tocantins'
        when etat = 'AP' then 'Amapá'
        when etat = 'PA' then 'Pará'
        when etat = 'PE' then 'Pernambuco'
        when etat = 'RO' then 'Rondônia'
        when etat = 'PB' then 'Paraíba'
        when etat = 'MT' then 'Mato Grosso'
        when etat = 'AL' then 'Alagoas'
        when etat = 'PI' then 'Piauí'
        when etat = 'RR' then 'Roraima'
        else etat
    end as etat,

    city,
    city_etat,
    payment,
    typepaiement
FROM "ecommerce"."main"."int_sales"