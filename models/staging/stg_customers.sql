select
    customer_id,
    full_name,
    email,
    join_date
from {{ source('cowjacket_raw', 'customers') }}
