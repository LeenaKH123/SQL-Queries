-- 1st query --
select PurchaseOrderID, sum(LineTotal) as "Total of line total"
from transactions
group by PutchaseOrderID
having sum(LineTotal) > 50000
order by PurchaseOrderID DESC
