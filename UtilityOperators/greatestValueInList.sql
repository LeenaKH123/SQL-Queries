select greatest (200, 20, 30)

select name, weight, greatest(30, 2 * weight)
from products

-- least value in a list
select least (1, 20, 50, 100)

--
select name, price, least(price * 0.5, 300)
from products;