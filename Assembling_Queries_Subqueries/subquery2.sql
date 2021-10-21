-- write a query that prints the name and price of each phone
-- print out the ratio of the phones price against max price of all phones
-- rename this third column to price_ratio
select name, price, price / (select max(price) from Phones) as price_ratio
from Phones
--group by name, price

--2nd query
select name, price / weight as price_weight_ratio
from products;

--3rd query
select name, price_weight_ratio
from (
select name, price / weight As price_weight_ratio
from products
) as p
where price_weight_ratio > 5;

--4th query
select max(price) from products;

-- 5th query
select * from (select max(price) from products) as p;

-- 6th query find the average number of orders for all users
SELECT AVG(order_count)
from (
    select user_id, count(*) as order_count
    from orders
    group by user_id
) as p