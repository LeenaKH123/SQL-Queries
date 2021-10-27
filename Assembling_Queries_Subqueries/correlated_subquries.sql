-- first way to write the query
select name, department, price
from products
where price < (select max(price) from products where department = 'Industrial')

-- second way to write the query
select name, department, price
from products as p1
where p1.price < (select max(price) from products where department = 'Industrial')

-- third way to write the query
select name, department, price
from products as p1
where p1.price < (select max(price) from products as p2 where p1.department = p2.department)

-- 4
select name, department, price
from products as p1
where p1.price = (
    select max(price)
    from products AS p2
    where p1.department = p2.department
)

--- more on correlated sub queries
--without using a join or a group by print the number of orders for each product
-- this is like double nested for loop
select p1.name, (select count(*) from orders as o1 where o1.product_id = p1.id) as num_orders
from products as p1

