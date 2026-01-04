select
    customer_id,
    full_name,
    total_revenue,
    order_count,
    first_order_date,
    last_order_date,

    dense_rank() over (order by total_revenue desc) as spend_rank

from {{ ref('int_customer_order_metrics') }}
where order_count > 0
