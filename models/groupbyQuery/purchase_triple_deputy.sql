-- models/purchase_analysis.sql

{{ config(
    materialized='table',
    unique_key='total_orders, city, country, jour, firstname, lastname'
) }}

SELECT
    COUNT(p.orders) AS total_orders,
    p.city,
    t.country,
    t.jour,
    d.firstname,
    d.lastname
FROM
    {{ ref('purchase') }} p
JOIN
    {{ ref('triple') }} t ON p.city = t.city
JOIN
    {{ ref('deputy') }} d ON d.id = t.id
GROUP BY
    p.orders, p.city, t.country, t.jour, d.firstname, d.lastname
