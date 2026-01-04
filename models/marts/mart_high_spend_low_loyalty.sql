select
    o.customer_id,
    o.full_name,
    o.total_revenue as total_spend,
    l.total_points
from {{ ref('int_customer_order_metrics') }} o
join {{ ref('int_customer_loyalty') }} l
  on o.customer_id = l.customer_id
where o.total_revenue > 50000
  and l.total_points < 200
