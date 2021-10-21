-- calculate the average price of phones for each manufacturer
-- print the highest average price
select AVG(price) as avg_price
from Phones
group by manufacturer