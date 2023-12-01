
-- Define the 'purchase' dbt model
{{ config(
    materialized='table'
) }}

SELECT
    id,
    city,
    orders
FROM purchase  -- my database and schema names
