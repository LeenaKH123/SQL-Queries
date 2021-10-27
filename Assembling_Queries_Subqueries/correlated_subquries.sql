select name, department, price
from products
where price < (select max(price) from products where department = 'Industrial')