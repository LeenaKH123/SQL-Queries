-- first view --
create view MyFirst as 
select color, sum(LineTotal) as "Line Total"
from transactions as T
left join Product as P
ON T.ProductID = P.ProductID
group by color