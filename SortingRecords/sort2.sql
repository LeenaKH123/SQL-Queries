-- write a query that shows the names of only the second and third most expensive phones
select name, price
from Phones
order by price DESC limit 2 offset 1;