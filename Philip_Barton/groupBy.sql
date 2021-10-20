----group by with aggragte function---
select PurchaseOrderID, sum(LineTotal)
from transactions
group by PurchaseOrderID

-- second query ------adding where-- and alias
select PurchaseOrderID, sum(LineTotal) as "Total of line total"
from transactions
where PurchaseOrderID = 7
group by PurchaseOrderID

---third query -- group by with left join ---
--i want to have the total cost of all of the different colors --
select sum(LineTotal),  Color from transactions as T
left join Product as P
on T.ProductID = P.ProductID
group by Color