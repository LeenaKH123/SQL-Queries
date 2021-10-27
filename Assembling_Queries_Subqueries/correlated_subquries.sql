-- first way to write the query
select name, department, price
from products
where price < (select max(price) from products where department = 'Industrial')

-- second way to write the query
select name, department, price
from products as p1
where p1.price < (select max(price) from products where department = 'Industrial')