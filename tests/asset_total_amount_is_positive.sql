
select 
    order_id,
    sum(amount) as total_amounts
from {{ ref('stg_payments')}}
group by 1
having not(total_amounts >= 0 ) 