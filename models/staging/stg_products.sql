select
    product_id,
    product_name,
    category,
    price
from {{ source('cowjacket_raw', 'products') }}
