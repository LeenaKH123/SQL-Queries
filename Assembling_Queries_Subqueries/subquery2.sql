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