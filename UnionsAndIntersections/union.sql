-- find the 4 products with the highest price and the 4 products with the highest price/weight ratio
(
    select *
    from products
    order by price DESC
    limit 4
)
UNION
(
    select *
    from products
    order by price / weight DESC 
    limit 4
);