----group by with aggragte function---
select PurchaseOrderID, sum(LineTotal)
from transactions
group by PurchaseOrderID

-- second query ------adding where-- and alias
select PurchaseOrderID, sum(LineTotal) as "Total of line total"
from transactions
where PurchaseOrderID = 7
group by PurchaseOrderID

