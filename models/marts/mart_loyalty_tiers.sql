select
    case
        when total_points < 100 then 'Bronze'
        when total_points between 100 and 499 then 'Silver'
        else 'Gold'
    end as tier,

    count(*) as tier_count,
    sum(total_points) as tier_total_points

from {{ ref('int_customer_loyalty') }}
group by 1
