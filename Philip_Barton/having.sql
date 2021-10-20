-- where works before the group by is executed
-- having works after the group by is executed
--1st query
select PurchaseOrderID, sum(LineTotal) as "Total of line total"
left join Product as P
on T.ProductID = P.ProductID
group by Color