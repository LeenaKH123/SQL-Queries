select name, department, price
from products
where price > (select MAX(price) from products where department = 'industrial')

-- 2nd way to write the query
SELECT name, department, price
from products
where price > ALL (
  select price from products where department = 'Industrial'  
)