-- select without a from
-- can be done with any subquery that returns a single value
select (
    select max(price) from products
)/ (select min (price) from products)