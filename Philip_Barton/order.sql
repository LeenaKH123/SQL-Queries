-- 1st query --
select PurchaseOrderID, sum(LineTotal) as "Total of line total"
from transactions
group by PurchaseOrderID
having sum(LineTotal) > 50
order by PurchaseOrderID DESC
