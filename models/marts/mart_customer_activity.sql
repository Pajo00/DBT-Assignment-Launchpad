select
    customer_id,
    full_name,
    last_order_date,

    case
        when last_order_date < date '2023-12-31' - interval '60 days'
        then true
        else false
    end as inactive_60_days,

    case
        when last_order_date < date '2023-12-31' - interval '90 days'
        then true
        else false
    end as inactive_90_days

from {{ ref('int_customer_order_metrics') }}
