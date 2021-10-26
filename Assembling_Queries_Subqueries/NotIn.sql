-- show the name of all products that are not in the same department
-- as products with a price less than 100
select department
from products 
where price < 100

-- 2nd query
select name, department
from products
where department NOT IN (
    select department from products where price < 100
)
