
SELECT
    t.country,
    t.city,
    t.jour,
    d.firstname,
    d.lastname
FROM
    {{ ref('triple') }} t --triple table in my bdd
JOIN
    {{ ref('deputy') }} d -- deputy table in my bdd
ON
    t.id = d.id
