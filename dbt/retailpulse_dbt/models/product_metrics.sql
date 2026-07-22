SELECT
    product_id,
    SUM(units_sold) AS total_units_sold,
    SUM(revenue) AS total_revenue,
    AVG(revenue) AS avg_revenue_per_sale

FROM {{ source('gold', 'product_performance') }}

GROUP BY product_id