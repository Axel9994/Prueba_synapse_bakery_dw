create view DimProduct AS
select ROW_NUMBER() over(order by product_name, product_category) as ProductID,
       p.product_name,
       p.product_category
from (
    select distinct product_name, product_category
    from dbo.bakery_stage
) p