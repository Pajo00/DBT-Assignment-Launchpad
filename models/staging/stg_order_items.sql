select
    order_item_id,
    order_id,
    product_id,
    quantity,
    line_total
from {{ source('cowjacket_raw', 'order_items') }}
