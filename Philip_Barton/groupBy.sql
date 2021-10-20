select PurchaseOrderID, sum(LineTotal)
from transactions
group by PurchaseOrderID