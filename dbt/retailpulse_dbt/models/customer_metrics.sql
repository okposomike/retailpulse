SELECT
    customer_id,
    COUNT(DISTINCT order_date) AS active_days,
    SUM(total_orders) AS total_orders,
    SUM(total_revenue) AS total_spent,
    AVG(total_revenue) AS avg_order_value

FROM {{ source('gold', 'sales_summary') }}

GROUP BY customer_id