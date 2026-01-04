select
    c.customer_id,
    c.full_name,

    count(o.order_id) as order_count,
    sum(o.total_amount) as total_revenue,
    avg(o.total_amount) as aov,

    min(o.order_date) as first_order_date,
    max(o.order_date) as last_order_date

from {{ ref('stg_customers') }} c
left join {{ ref('stg_orders') }} o
  on c.customer_id = o.customer_id

group by c.customer_id, c.full_name
