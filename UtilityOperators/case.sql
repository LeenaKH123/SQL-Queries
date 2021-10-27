select name,
price, 
CASE
    when price > 600 THEN 'high'
    when price > 300 THEN 'medium'
    else 'cheap'
END
from products;