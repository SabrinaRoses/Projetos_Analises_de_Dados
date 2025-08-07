select * from superstore;

select 
	round( 
		100.0 * sum(case when Discount > 0 then 1 else 0 end) / count(*), 2
    ) as percentual_with_discount
from superstore;