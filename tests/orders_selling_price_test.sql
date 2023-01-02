select orderid, ordersellingprice
from {{ ref('raw_orders') }}
where ordersellingprice is not null