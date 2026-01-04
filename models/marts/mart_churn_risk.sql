select
    o.customer_id,
    o.full_name,
    o.last_order_date,
    l.total_points
from {{ ref('int_customer_order_metrics') }} o
join {{ ref('int_customer_loyalty') }} l
  on o.customer_id = l.customer_id
where o.last_order_date < date '2023-12-31' - interval '90 days'
  and l.total_points < 100
