    SELECT * 
    FROM products
    order by price DESC
    limit 4
    where id not in (
    select *
    from products
    --order by price / weight DESC
    --LIMIT 4
    );