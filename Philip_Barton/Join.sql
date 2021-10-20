-- join query 1 --
select * from transactions
join Product
on transactions.ProductID = Product.ProductID

---Left join query 2 - with alias
select * from transactions as T
left join Product as P
on T.ProductID = P.ProductID

--- adding more columns to the join
select PurchaseOrderID, OrderQty, ProductID, UnitPrice, LineTotal from transactions as T
left join Product as P
on T.ProductID = P.ProductID

