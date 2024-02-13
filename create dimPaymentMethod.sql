create view DimPayment_Method AS
select ROW_NUMBER() over(order by payment_method) as PaymentMethodID,
       pm.payment_method
from (
    select distinct payment_method
    from dbo.bakery_stage
) pm