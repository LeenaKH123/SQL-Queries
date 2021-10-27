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

-- write a query that prints put the name and price of phones
-- that have a price greator than the Samsung S5620
select name, price
from Phones 
where price > (select price from Phones where name like "%Monte%")

-- another example, not valid subquery as the operand should contain one column
SELECT price, (SELECT manufacturer, units_sold FROM Phones)
FROM Phones;

-- another example
SELECT (price * units_sold) 
FROM (SELECT * FROM Phones) as p;

-- another example
SELECT price * units_sold
FROM Phones
WHERE price > ALL (SELECT price FROM Phones WHERE manufacturer = 'Nokia');





