-- models/purchase_aggregation.sql



SELECT
    COUNT(orders) AS total_orders,
    city
FROM
    {{ ref('purchase') }}
GROUP BY
    city, orders
