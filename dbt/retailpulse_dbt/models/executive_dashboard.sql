SELECT
    COUNT(DISTINCT cp.customer_id) AS total_customers,
    SUM(cm.total_orders) AS total_orders,
    SUM(cm.total_spent) AS total_revenue,
    AVG(cm.avg_order_value) AS average_order_value

FROM {{ ref('customer_metrics') }} cm
JOIN {{ ref('customer_profile') }} cp
    ON cm.customer_id = cp.customer_id