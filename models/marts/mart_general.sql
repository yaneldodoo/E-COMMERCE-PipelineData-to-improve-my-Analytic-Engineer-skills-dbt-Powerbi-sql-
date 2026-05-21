--this mart was using to create the general design 
-- with some metrics which are forgetten in other marts but we can use it for future analysis

SELECT *
FROM {{ ref('int_sales') }}