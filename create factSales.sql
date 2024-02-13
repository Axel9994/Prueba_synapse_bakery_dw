create view FactSales as 
select c.CustomerID,
       r.purchase_date,
       p.ProductID,
       r.quantity,
       r.unit_price,
       r.discount,
       (r.quantity * r.unit_price) - r.discount as total_price,
       pm.PaymentMethodID,
       l.LocationID
from dbo.bakery_stage r 
left join dbo.DimCustomer c 
on r.customer_name = c.customer_name
left join dbo.DimProduct p 
on r.product_name = p.product_name and r.product_category = p.product_category
left join dbo.DimPayment_Method pm 
on r.payment_method = pm.payment_method 
left join dbo.DimLocation l 
on r.delivery_address = l.delivery_address and r.city = l.city and ((r.[state] = l.[state]) or (l.[state] = CONCAT(r.country, '-', 'REGION'))) and l.postal_code = r.postal_code