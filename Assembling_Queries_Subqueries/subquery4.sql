-- queries that are used inside ebay
select id from orders
where product_id
IN (select id from products where price / weight > 50)

--- select products with price greator than avg price
select name, price
from products
where price > (
    select avg(price) from products
)
order by price


