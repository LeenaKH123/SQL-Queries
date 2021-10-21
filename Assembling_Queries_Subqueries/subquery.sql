-- list the name and price of all the products that are more expensive than all the products in the toys department
select name, price 
from products
where price > (
    select MAX(price) from products where department = 'Toys'
);