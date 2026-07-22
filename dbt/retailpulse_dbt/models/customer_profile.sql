SELECT
    customer_id,
    total_orders,

    CASE
        WHEN total_orders >= 10 THEN 'VIP'
        WHEN total_orders >= 5 THEN 'Loyal'
        ELSE 'Regular'
    END AS customer_segment

FROM {{ source('gold', 'customer_summary') }}