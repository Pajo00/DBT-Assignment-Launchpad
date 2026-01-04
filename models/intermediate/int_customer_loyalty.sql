select
    c.customer_id,
    c.full_name,
    coalesce(sum(lp.points_earned), 0) as total_points
from {{ ref('stg_customers') }} c
left join {{ ref('stg_loyalty_points') }} lp
  on c.customer_id = lp.customer_id
group by c.customer_id, c.full_name
