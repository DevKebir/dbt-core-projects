
-- Define the 'deputy' dbt model
{{ config(
    materialized='table'
) }}

SELECT
    id,
    firstname,
    lastname
FROM deputy  -- my database and schema names
