-- join together the users and the orders tables --
-- print the first name and last name of each user --
-- and weather or not they have paid or not --

select first_name, last_name, paid
from users
join orders on orders.user_id = users.id
--group by first_name, last_name, paid;
