create view DimCustomer AS
select ROW_NUMBER() over(order by c.customer_name asc) as CustomerID,
       c.customer_name
from (
    select distinct customer_name
    from dbo.bakery_stage
) c