create view DimLocation AS
select ROW_NUMBER() over(order by l.delivery_address,
       l.city,
       l.[state],
       l.country,
       l.postal_code) as LocationID,
       l.delivery_address,
       l.city,
       l.[state],
       l.country,
       l.postal_code
from (
    select distinct delivery_address, city, CASE WHEN [state] = '' THEN CONCAT(country, '-', 'REGION') ELSE [state] end as [state], country, postal_code
    from dbo.bakery_stage
) l