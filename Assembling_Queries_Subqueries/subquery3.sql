-- calculate the average price of phones for each manufacturer
-- print the highest average price
select MAX(p.avg_price) AS max_average_price
FROM (select AVG(price) as avg_price
from Phones
group by manufacturer) AS p;

-- subquery with join -- 
select first_name
from users
JOIN (
    select user_id from orders where product_id = 3
) AS o
ON o.user_id = users.id;
