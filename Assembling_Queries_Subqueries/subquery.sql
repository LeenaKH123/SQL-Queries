-- list the name and price of all the products that are more expensive than all the products in the toys department
select name, price 
from products
where price > (
    select MAX(price) from products where department = 'Toys'
);

-- thinking about the structure of data
-- extreme example
select p1.name,
(select count(name) from products)
from (select * from products) as p1
join (select * from products) as p2 ON p1.id = p2.id
where p1.id in (select id from products);