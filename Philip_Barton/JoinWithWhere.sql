--- adding where to the join query ---
select PurchaseOrderID, OrderQty, T.ProductID, UnitPrice, LineTotal, ProductName, Color from transactions as T
left join Product as P
on T.ProductID = P.ProductID
where Color = "blue"