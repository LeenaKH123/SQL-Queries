 ( select *
    from products
    order by price DESC
    limit 4
 )
    INTERSECT
(
    select *
    from products
    order by price / weight DESC 
    limit 4
);