select 
o.orderid, 
o.orderdate, 
o.shipdate, 
o.shipmode,
o.ordersellingprice - o.ordercostprice as ORDERPROFIT,
o.ordersellingprice,
o.ordercostprice,
c.customerid,
c.customername,
c.segment,
c.country,
p.productid,
p.category,
p.productname,
p.subcategory,
{{ markup }} as markup
from {{ ref('raw_orders') }} as o
left join {{ ref('raw_customers') }} as c
on o.customerid = c.customerid
left join {{ ref('raw_prodct') }} as p
on o.productid = p.productid