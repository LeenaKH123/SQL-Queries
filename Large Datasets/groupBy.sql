-- write a query to print the number of paid and un paid orders
-- you should only use the orders table

select paid, count(*)
from orders
group by paid;