-- queries that are used inside ebay
select id from orders
where product_id
IN (select id from products where price / weight > 5)