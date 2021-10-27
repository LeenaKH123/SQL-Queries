-- select without a from
-- can be done with any subquery that returns a single value
select (
    select max(price) from products
)/ (select min (price) from products)

select (
    select max(price) from products
) as max1, (select avg (price) from products) as avg1

-- using only subqueries, print the max price, min price, and avg price for all phones
-- rename each column to min_price, max_price, avg_price

select (select max(price) from Phones) as max_price, (select min(price) from Phones) as min_price, (select avg(price) from Phones) as avg_price