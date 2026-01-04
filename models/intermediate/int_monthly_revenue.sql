select
    extract(year from order_date)::int as year,
    extract(month from order_date)::int as month,
    sum(total_amount) as monthly_revenue
from {{ ref('stg_orders') }}
where order_date >= '2023-01-01'
  and order_date <= '2023-12-31'
group by 1, 2
