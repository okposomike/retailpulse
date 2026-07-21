select
    order_date,
    sum(total_revenue) as revenue,
    count(*) as total_orders

from customers.gold.sales_summary

group by order_date