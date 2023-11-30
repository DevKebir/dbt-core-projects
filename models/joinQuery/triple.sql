-- Define the 'triple' dbt model 

{{ config(
    materialized='table',
)}}
SELECT
    id,
    country,
    city,
    jour::date
FROM triple