-- some is a synonym for any
-- we can use some and any interchangeably
-- example: show the name of products that are more expensive than at least one product in the "Industrial" department

select name, department, price
from products
where price > SOME (
select price
from products
where department = 'Industrial');