-- write a query that prints the name and price of each phone
-- print out the ratio of the phones price against max price of all phones
-- rename this third column to price_ratio
select name, price, price / (select max(price) from Phones) as price_ratio
from Phones
--group by name, price
